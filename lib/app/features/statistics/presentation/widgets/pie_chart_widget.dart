import 'package:expensio/app/core/utils/mss_code_utils.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/slider_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  final StatisticsState state;

  const PieChartWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    Map<int, double> categorySumMap = {};
    double sum = 0;

    for (var transaction in state.financialExpenses ?? []) {
      var mcc = transaction.mcc;
      var amount = (transaction.amount ?? 0) / 100;

      if (amount < 0) {
        if (categorySumMap.containsKey(mcc)) {
          categorySumMap[mcc ?? 0] = categorySumMap[mcc]! + amount;
        } else {
          categorySumMap[mcc ?? 0] = amount;
        }
      }
    }

    final List<ChartData> chartData = [];

    categorySumMap.forEach((category, amount) {
      chartData.add(ChartData(category, amount));
    });

    //chartData.sort((a, b) => a.y.compareTo(b.y));

    return Scaffold(
      appBar: AppBar(
        title: const Text('График категорий товаров'),
        backgroundColor: CupertinoColors.systemOrange,
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SliderAlertDialog(
                      initialValue: state.daysCount.toDouble());
                },
              ).then((value) {
                if (value != null) {
                  BlocProvider.of<StatisticsBloc>(context)
                      .add(ChangeDayCount(int.parse(value.toStringAsFixed(0))));
                }
              });
            },
            child: Center(
              child: Text(
                '${state.daysCount} дней ',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SfCircularChart(
                series: <CircularSeries>[
                  PieSeries<ChartData, String>(
                    dataSource: chartData,
                    pointColorMapper: (ChartData data, _) {
                      return MccCodeUtils().getCategoryColor(data.x);
                    },
                    xValueMapper: (ChartData data, _) => data.x.toString(),
                    yValueMapper: (ChartData data, _) => data.y,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Суммы по категориям',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Текущий баланс: ${((state.financialExpenses?.first.balance ?? 0) / 100).toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chartData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      'Категория: ${MccCodeUtils().mccToDescription(chartData[index].x)}'),
                  subtitle:
                      Text('Сумма: ${(chartData[index].y).toStringAsFixed(2)}'),
                  leading: Icon(
                    Icons.circle,
                    color: MccCodeUtils().getCategoryColor(
                      chartData[index].x,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionData {
  final int mccCategory;
  final double amount;

  TransactionData(this.mccCategory, this.amount);
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);

  final int x;
  final double y;
  final Color? color;
}

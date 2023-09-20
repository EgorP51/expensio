import 'package:expensio/app/core/utils/chart_data/chart_data.dart';
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
              child: (state.isLoading == true)
                  ? CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.grey[300],
                    )
                  : SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<ChartData, String>(
                          dataSource: state.chartData,
                          pointColorMapper: (ChartData data, _) {
                            return MccCodeUtils().getCategoryColor(data.x);
                          },
                          xValueMapper: (ChartData data, _) =>
                              data.x.toString(),
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
              itemCount:
                  (state.isLoading == true) ? 4 : state.chartData?.length ?? 0,
              itemBuilder: (context, index) {
                if (state.isLoading == true) {
                  return ListTile(
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[400],
                        ),
                        height: 15,
                        width: 200,
                      ),
                    ),
                    subtitle: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[300],
                        ),
                        height: 15,
                        width: 170,
                      ),
                    ),
                    leading: Icon(
                      Icons.circle,
                      color: Colors.grey[400],
                    ),
                  );
                } else {
                  return ListTile(
                    title: Text(
                        'Категория: ${MccCodeUtils().mccToDescription((state.chartData ?? [])[index].x)}'),
                    subtitle: Text(
                        'Сумма: ${((state.chartData ?? [])[index].y).toStringAsFixed(2)}'),
                    leading: Icon(
                      Icons.circle,
                      color: MccCodeUtils().getCategoryColor(
                        (state.chartData ?? [])[index].x,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

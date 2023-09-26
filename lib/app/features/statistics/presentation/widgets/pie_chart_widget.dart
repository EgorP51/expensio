import 'package:expensio/app/core/utils/chart_data/chart_data.dart';
import 'package:expensio/app/core/utils/mss_code_utils.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/slider_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatisticsBloc, StatisticsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('График категорий товаров'),
              backgroundColor: CupertinoColors.systemOrange,
              actions: [
                GestureDetector(
                  onLongPress: () {
                    BlocProvider.of<StatisticsBloc>(context)
                        .add(const ChangeDayCount(1));
                  },
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SliderAlertDialog(
                            initialValue: state.daysCount.toDouble());
                      },
                    ).then((value) {
                      if (value != null) {
                        BlocProvider.of<StatisticsBloc>(context).add(
                            ChangeDayCount(
                                int.parse(value.toStringAsFixed(0))));
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
            floatingActionButton: FloatingActionButton(
              backgroundColor: CupertinoColors.systemOrange,
              onPressed: () {
                BlocProvider.of<StatisticsBloc>(context).add(
                  ChangeDayCount(state.daysCount),
                );
              },
              child: const Icon(CupertinoIcons.refresh),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChartWidget(state: state),
                TextStatisticsWidget(state: state),
                SumsByCategory(state: state),
              ],
            ));
      },
    );
  }
}

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key, required this.state});

  final StatisticsState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Center(
            child: AllStatsPieChart(state: state),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: DailyStatsPieChart(state: state),
          ),
        ],
      ),
    );
  }
}

class TextStatisticsWidget extends StatelessWidget {
  const TextStatisticsWidget({super.key, required this.state});

  final StatisticsState state;

  @override
  Widget build(BuildContext context) {
    var currentBalance = 0.0;

    if ((state.financialExpenses ?? []).isNotEmpty) {
      currentBalance = (state.financialExpenses?.first.balance ?? 0) / 100;
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Текущий баланс: ${currentBalance.toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
          Text(
            'Было потрачено: ${state.periodicExpenses.toStringAsFixed(0)}',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class SumsByCategory extends StatelessWidget {
  const SumsByCategory({super.key, required this.state});

  final StatisticsState state;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Суммы по категориям:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: (state.isLoading == true)
                  ? 4
                  : state.allChartData?.length ?? 0,
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
                  final category = MccCodeUtils()
                      .getMccCategory((state.allChartData ?? [])[index].x);

                  return ListTile(
                    title: Text('Категория: ${category.description}'),
                    subtitle: Text(
                      'Сумма: ${((state.allChartData ?? [])[index].y).toStringAsFixed(2)}',
                    ),
                    leading: Icon(
                      Icons.circle,
                      color: category.color,
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

class AllStatsPieChart extends StatelessWidget {
  const AllStatsPieChart({super.key, required this.state});

  final StatisticsState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 250,
      child: SfCircularChart(
        centerX: '50%',
        centerY: '40%',
        series: <CircularSeries>[
          PieSeries<ChartData, String>(
            dataSource: state.allChartData,
            pointColorMapper: (ChartData data, _) {
              return MccCodeUtils().getMccCategory(data.x).color;
            },
            xValueMapper: (ChartData data, _) => data.x.toString(),
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }
}

class DailyStatsPieChart extends StatelessWidget {
  const DailyStatsPieChart({super.key, required this.state});

  final StatisticsState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 100,
      child: SfCircularChart(
        series: <CircularSeries>[
          PieSeries<ChartData, String>(
            dataSource: state.dailyChartData,
            pointColorMapper: (ChartData data, _) {
              return MccCodeUtils().getMccCategory(data.x).color;
            },
            xValueMapper: (ChartData data, _) => data.x.toString(),
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }
}

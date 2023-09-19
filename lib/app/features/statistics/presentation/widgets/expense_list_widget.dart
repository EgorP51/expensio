import 'package:expensio/app/core/utils/mss_code_utils.dart';
import 'package:expensio/app/core/utils/time_utils.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/slider_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseListWidget extends StatelessWidget {
  const ExpenseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatisticsBloc, StatisticsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Список последних расходов'),
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
              elevation: 100,
              onPressed: () {},
              child: const Icon(CupertinoIcons.add),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: state.financialExpenses?.length ?? 0,
                    itemBuilder: (_, index) {
                      if (state.financialExpenses != null) {
                        final item = state.financialExpenses![index];

                        final category =
                            MccCodeUtils().mccToDescription(item.mcc ?? 0);
                        final sum =
                            ((item.amount ?? 0) / 100).toStringAsFixed(2);
                        final iconColor =
                            MccCodeUtils().getCategoryColor(item.mcc ?? 0);

                        return ListTile(
                          title: Text('Категория: $category'),
                          subtitle: Text(TimeUtils()
                              .dateTimeFromMilliseconds(item.time ?? 0)),
                          leading: Icon(Icons.circle, color: iconColor),
                          trailing: Text(sum),
                        );
                      }
                      return const SizedBox();
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StatisticsBloc, StatisticsState>(
      builder: (context, state) {
        // if (state.isLoading == true) {
        //   return const Center(child: CircularProgressIndicator());
        // }
        return PieChartWidget(state: state);
      },
      listener: (context, state) {},
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/statistics_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'StatisticsRoute')
class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const StatisticWidget();
  }
}

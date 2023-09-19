import 'package:auto_route/annotations.dart';
import 'package:expensio/app/features/statistics/manager/statistics_bloc.dart';
import 'package:expensio/app/features/statistics/presentation/widgets/expense_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'FinanceListRoute')
class FinanceListScreen extends StatelessWidget {
  const FinanceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpenseListWidget();
  }
}

import 'package:auto_route/annotations.dart';
import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/budget_entry_buttons.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_summary_widget.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_tile.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'SelfEntryFinanceRoute')
class SelfEntryFinanceScreen extends StatefulWidget {
  const SelfEntryFinanceScreen({super.key});

  @override
  State<SelfEntryFinanceScreen> createState() => _SelfEntryFinanceScreenState();
}

class _SelfEntryFinanceScreenState extends State<SelfEntryFinanceScreen> {
  final allFinancialRecords = List.generate(
    9,
    (index) => FinancialRecord(
      amount: 4.0,
      comment: 'comment',
      date: DateTime.now(),
      isIncome: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) => FinanceTile(
                financialRecord: allFinancialRecords[index],
              ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: 8,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: const Column(
              children: [
                BudgetEntryButtons(),
                FinanceSummaryWidget(receivedMoney: 1000, spentMoney: 9876)
              ],
            ),
          )
        ],
      ),
    );
  }
}

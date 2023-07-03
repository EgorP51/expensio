import 'package:expensio/app/features/self_entry_finance/presentation/widgets/budget_entry_buttons.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_summary_widget.dart';
import 'package:flutter/material.dart';

class SelfEntryFinanceScreen extends StatelessWidget {
  const SelfEntryFinanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  '$index title',
                ),
              ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: 20,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: const Column(
              children: [
                BudgetEntryButtons(),
                FinanceSummaryWidget(receivedMoney: 100, spentMoney: 9876)
              ],
            ),
          )
        ],
      ),
    );
  }
}

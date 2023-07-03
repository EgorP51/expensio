import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_summary_widget.dart';
import 'package:flutter/material.dart';

class SelfEntryFinanceScreen extends StatelessWidget {
  const SelfEntryFinanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: FinanceSummaryWidget(
          receivedMoney: 1267,
          spentMoney: 876,
        ),
      ),
    );
  }
}

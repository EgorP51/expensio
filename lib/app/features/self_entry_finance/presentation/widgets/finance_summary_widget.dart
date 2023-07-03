import 'package:expensio/app/core/expensio_ui/expensio_ui.dart';
import 'package:expensio/app/core/expensio_ui/theme/colors/expensio_colors.dart';
import 'package:flutter/material.dart';

class FinanceSummaryWidget extends StatelessWidget {
  const FinanceSummaryWidget({
    required this.receivedMoney,
    required this.spentMoney,
    super.key,
  }) : balance = receivedMoney - spentMoney;

  final int receivedMoney;
  final int spentMoney;
  final int balance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        children: [
          const ExpensioDivider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'received\n$receivedMoney',
                  style: TextStyle(color: context.expensioColors.green),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                const ExpensioVerticalDivider(),
                Text(
                  'spent\n$spentMoney',
                  style: TextStyle(color: context.expensioColors.red),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                const ExpensioVerticalDivider(),
                Text(
                  'balance ${balance >= 0 ? '😃' : '😥'}\n$balance ',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
         const ExpensioDivider()
        ],
      ),
    );
  }
}

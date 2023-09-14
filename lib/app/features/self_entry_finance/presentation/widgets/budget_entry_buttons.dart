import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:expensio/app/core/expensio_ui/buttons/expensio_button.dart';
import 'package:expensio/app/core/expensio_ui/theme/colors/expensio_colors.dart';
import 'package:expensio/app/core/storage/sqflite/sqflite_storage.dart';
import 'package:flutter/material.dart';

import '../../../../core/enums/enums.dart';

class BudgetEntryButtons extends StatelessWidget {
  const BudgetEntryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          ExpensioButton(
            onPressed: () {},
            text: 'received',
            color: context.expensioColors.green,
          ),
          const SizedBox(width: 5),
          ExpensioButton(
            onPressed: () {
              final record = FinancialRecord(
                amount: 44.44,
                comment: 'comment from db',
                date: DateTime.now(),
                isIncome: true,
                type: ExpenseType.other
              );
              final database = SqfliteStorage();
              database.saveFinancialRecord(record);
            },
            text: 'spent',
            color: context.expensioColors.red,
          )
        ],
      ),
    );
  }
}

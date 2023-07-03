import 'package:expensio/app/core/expensio_ui/buttons/expensio_button.dart';
import 'package:expensio/app/core/expensio_ui/theme/colors/expensio_colors.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
            text: 'spent',
            color: context.expensioColors.red,
          )
        ],
      ),
    );
  }
}

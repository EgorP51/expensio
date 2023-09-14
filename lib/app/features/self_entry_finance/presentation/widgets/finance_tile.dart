import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/enums/enums.dart';

class FinanceTile extends StatelessWidget {
  const FinanceTile({
    this.financialRecord,
    super.key,
  });

  final FinancialRecord? financialRecord;

  Color getColorForExpenseType(ExpenseType type) {
    switch (type) {
      case ExpenseType.groceries:
        return Colors.green;
      case ExpenseType.cafes:
        return Colors.amber;
      case ExpenseType.entertainment:
        return Colors.blue;
      case ExpenseType.spontaneousPurchases:
        return Colors.red;
      case ExpenseType.clothing:
        return Colors.purple;
      case ExpenseType.other:
        return Colors.pink;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showItemInfo(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              width: 2,
              color: getColorForExpenseType(financialRecord!.type)
                  .withOpacity(0.5)),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: getColorForExpenseType(financialRecord!.type)
                    .withOpacity(0.8),
              ),
              height: 25,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              height: 60,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      financialRecord?.comment ?? 'нема',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      financialRecord?.amount.toStringAsFixed(0) ?? '',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showItemInfo(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            width: 200,
            height: 400,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(financialRecord?.amount.toStringAsFixed(1) ?? ''),
                Text(financialRecord?.comment ?? ''),
                Text(financialRecord?.type.toString() ?? ''),
                Text(financialRecord?.date.toString() ?? ''),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:expensio/app/core/utils/enums/enums.dart';
import 'package:expensio/app/core/utils/time_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: getColorForExpenseType(financialRecord!.type).withOpacity(
              0.5,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                ),
                color:
                    getColorForExpenseType(financialRecord!.type).withOpacity(
                  0.8,
                ),
              ),
              height: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          financialRecord?.comment ?? 'нема',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          TimeUtils().formatDateTime(
                            financialRecord?.date ?? DateTime.now(),
                          ),
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ('${financialRecord!.amount.toStringAsFixed(0)} ₸') ?? '',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 17,
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

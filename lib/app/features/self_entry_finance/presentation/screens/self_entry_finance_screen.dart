import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/budget_entry_buttons.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_summary_widget.dart';
import 'package:expensio/app/features/self_entry_finance/presentation/widgets/finance_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/enums/enums.dart';

@RoutePage(name: 'SelfEntryFinanceRoute')
class SelfEntryFinanceScreen extends StatefulWidget {
  const SelfEntryFinanceScreen({super.key});

  @override
  State<SelfEntryFinanceScreen> createState() => _SelfEntryFinanceScreenState();
}

class _SelfEntryFinanceScreenState extends State<SelfEntryFinanceScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> randomComments = [
      'Great purchase!',
      'Interesting expense',
      'Could have saved on this',
      'Random comment',
      'Worth every penny',
    ];

    double getRandomAmount() {
      return (Random().nextDouble() * 1000 + 1).toDouble();
    }

    final allFinancialRecords = List.generate(
      17,
      (index) => FinancialRecord(
        amount: getRandomAmount(),
        comment: randomComments[Random().nextInt(randomComments.length)],
        date: DateTime.now(),
        isIncome: true,
        type: ExpenseType.values[Random().nextInt(ExpenseType.values.length)],
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFC1EAF1),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   title: Text(
        //     _currentDateTime(),
        //     style: GoogleFonts.nunitoSans(
        //       fontWeight: FontWeight.w500,
        //       color: Colors.black,
        //     ),
        //   ),
        //   elevation: 0,
        // ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          elevation: 100,
          onPressed: () {},
          child: const Icon(CupertinoIcons.add),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: allFinancialRecords.length,
                itemBuilder: (_, index) => FinanceTile(
                  financialRecord: allFinancialRecords[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _currentDateTime() {
  return '✨${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}✨';
}

import 'package:expensio/app/core/data/models/financial_record.dart';
import 'package:flutter/material.dart';

class FinanceTile extends StatelessWidget {
  const FinanceTile({
    required this.financialRecord,
    super.key,
  });

  final FinancialRecord financialRecord;

  @override
  Widget build(BuildContext context) {
    return Container();

    return ListTile(
      title: Text(financialRecord.comment),
      trailing: Text(financialRecord.amount.toString()),
      subtitle: Text(financialRecord.date.toIso8601String()),
    );
  }
}

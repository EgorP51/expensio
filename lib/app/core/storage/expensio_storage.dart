import 'package:expensio/app/core/data/models/financial_record.dart';

abstract class ExpensioStorage {
  Future<void> saveFinancialRecord(FinancialRecord record);

  Future<List<FinancialRecord>> getAllFinancialRecords();

  Future<void> deleteFinancialRecord(int id);
}

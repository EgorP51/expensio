import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_record.freezed.dart';
part 'financial_record.g.dart';


@freezed
class FinancialRecord with _$FinancialRecord {
  const factory FinancialRecord({
    required double amount,
    required String comment,
    required DateTime date,
    required bool isIncome,
  }) = _FinancialRecord;

  factory FinancialRecord.fromJson(Map<String, dynamic> json) =>
      _$FinancialRecordFromJson(json);
}

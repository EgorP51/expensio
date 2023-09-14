// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinancialRecord _$$_FinancialRecordFromJson(Map<String, dynamic> json) =>
    _$_FinancialRecord(
      amount: (json['amount'] as num).toDouble(),
      comment: json['comment'] as String,
      date: DateTime.parse(json['date'] as String),
      isIncome: json['isIncome'] as bool,
      type: $enumDecode(_$ExpenseTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_FinancialRecordToJson(_$_FinancialRecord instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'comment': instance.comment,
      'date': instance.date.toIso8601String(),
      'isIncome': instance.isIncome,
      'type': _$ExpenseTypeEnumMap[instance.type]!,
    };

const _$ExpenseTypeEnumMap = {
  ExpenseType.groceries: 'groceries',
  ExpenseType.cafes: 'cafes',
  ExpenseType.entertainment: 'entertainment',
  ExpenseType.spontaneousPurchases: 'spontaneousPurchases',
  ExpenseType.clothing: 'clothing',
  ExpenseType.other: 'other',
};

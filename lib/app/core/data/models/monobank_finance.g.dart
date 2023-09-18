// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monobank_finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonobankFinance _$$_MonobankFinanceFromJson(Map<String, dynamic> json) =>
    _$_MonobankFinance(
      id: json['id'] as String?,
      time: json['time'] as int?,
      description: json['description'] as String?,
      mcc: json['mcc'] as int?,
      originalMcc: json['originalMcc'] as int?,
      amount: json['amount'] as int?,
      operationAmount: json['operationAmount'] as int?,
      currencyCode: json['currencyCode'] as int?,
      commissionRate: json['commissionRate'] as int?,
      cashbackAmount: json['cashbackAmount'] as int?,
      balance: json['balance'] as int?,
      hold: json['hold'] as bool?,
      receiptId: json['receiptId'] as String?,
    );

Map<String, dynamic> _$$_MonobankFinanceToJson(_$_MonobankFinance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'description': instance.description,
      'mcc': instance.mcc,
      'originalMcc': instance.originalMcc,
      'amount': instance.amount,
      'operationAmount': instance.operationAmount,
      'currencyCode': instance.currencyCode,
      'commissionRate': instance.commissionRate,
      'cashbackAmount': instance.cashbackAmount,
      'balance': instance.balance,
      'hold': instance.hold,
      'receiptId': instance.receiptId,
    };

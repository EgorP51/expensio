import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'monobank_finance.freezed.dart';
part 'monobank_finance.g.dart';

@freezed
class MonobankFinance with _$MonobankFinance {
  const factory MonobankFinance({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "time")
    int? time,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "mcc")
    int? mcc,
    @JsonKey(name: "originalMcc")
    int? originalMcc,
    @JsonKey(name: "amount")
    int? amount,
    @JsonKey(name: "operationAmount")
    int? operationAmount,
    @JsonKey(name: "currencyCode")
    int? currencyCode,
    @JsonKey(name: "commissionRate")
    int? commissionRate,
    @JsonKey(name: "cashbackAmount")
    int? cashbackAmount,
    @JsonKey(name: "balance")
    int? balance,
    @JsonKey(name: "hold")
    bool? hold,
    @JsonKey(name: "receiptId")
    String? receiptId,
  }) = _MonobankFinance;

  factory MonobankFinance.fromJson(Map<String, dynamic> json) => _$MonobankFinanceFromJson(json);
}
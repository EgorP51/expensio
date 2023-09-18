// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monobank_finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonobankFinance _$MonobankFinanceFromJson(Map<String, dynamic> json) {
  return _MonobankFinance.fromJson(json);
}

/// @nodoc
mixin _$MonobankFinance {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "mcc")
  int? get mcc => throw _privateConstructorUsedError;
  @JsonKey(name: "originalMcc")
  int? get originalMcc => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "operationAmount")
  int? get operationAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "currencyCode")
  int? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "commissionRate")
  int? get commissionRate => throw _privateConstructorUsedError;
  @JsonKey(name: "cashbackAmount")
  int? get cashbackAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  int? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "hold")
  bool? get hold => throw _privateConstructorUsedError;
  @JsonKey(name: "receiptId")
  String? get receiptId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonobankFinanceCopyWith<MonobankFinance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonobankFinanceCopyWith<$Res> {
  factory $MonobankFinanceCopyWith(
          MonobankFinance value, $Res Function(MonobankFinance) then) =
      _$MonobankFinanceCopyWithImpl<$Res, MonobankFinance>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "time") int? time,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "mcc") int? mcc,
      @JsonKey(name: "originalMcc") int? originalMcc,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "operationAmount") int? operationAmount,
      @JsonKey(name: "currencyCode") int? currencyCode,
      @JsonKey(name: "commissionRate") int? commissionRate,
      @JsonKey(name: "cashbackAmount") int? cashbackAmount,
      @JsonKey(name: "balance") int? balance,
      @JsonKey(name: "hold") bool? hold,
      @JsonKey(name: "receiptId") String? receiptId});
}

/// @nodoc
class _$MonobankFinanceCopyWithImpl<$Res, $Val extends MonobankFinance>
    implements $MonobankFinanceCopyWith<$Res> {
  _$MonobankFinanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? mcc = freezed,
    Object? originalMcc = freezed,
    Object? amount = freezed,
    Object? operationAmount = freezed,
    Object? currencyCode = freezed,
    Object? commissionRate = freezed,
    Object? cashbackAmount = freezed,
    Object? balance = freezed,
    Object? hold = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mcc: freezed == mcc
          ? _value.mcc
          : mcc // ignore: cast_nullable_to_non_nullable
              as int?,
      originalMcc: freezed == originalMcc
          ? _value.originalMcc
          : originalMcc // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      operationAmount: freezed == operationAmount
          ? _value.operationAmount
          : operationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as int?,
      cashbackAmount: freezed == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      hold: freezed == hold
          ? _value.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as bool?,
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonobankFinanceCopyWith<$Res>
    implements $MonobankFinanceCopyWith<$Res> {
  factory _$$_MonobankFinanceCopyWith(
          _$_MonobankFinance value, $Res Function(_$_MonobankFinance) then) =
      __$$_MonobankFinanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "time") int? time,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "mcc") int? mcc,
      @JsonKey(name: "originalMcc") int? originalMcc,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "operationAmount") int? operationAmount,
      @JsonKey(name: "currencyCode") int? currencyCode,
      @JsonKey(name: "commissionRate") int? commissionRate,
      @JsonKey(name: "cashbackAmount") int? cashbackAmount,
      @JsonKey(name: "balance") int? balance,
      @JsonKey(name: "hold") bool? hold,
      @JsonKey(name: "receiptId") String? receiptId});
}

/// @nodoc
class __$$_MonobankFinanceCopyWithImpl<$Res>
    extends _$MonobankFinanceCopyWithImpl<$Res, _$_MonobankFinance>
    implements _$$_MonobankFinanceCopyWith<$Res> {
  __$$_MonobankFinanceCopyWithImpl(
      _$_MonobankFinance _value, $Res Function(_$_MonobankFinance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? mcc = freezed,
    Object? originalMcc = freezed,
    Object? amount = freezed,
    Object? operationAmount = freezed,
    Object? currencyCode = freezed,
    Object? commissionRate = freezed,
    Object? cashbackAmount = freezed,
    Object? balance = freezed,
    Object? hold = freezed,
    Object? receiptId = freezed,
  }) {
    return _then(_$_MonobankFinance(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mcc: freezed == mcc
          ? _value.mcc
          : mcc // ignore: cast_nullable_to_non_nullable
              as int?,
      originalMcc: freezed == originalMcc
          ? _value.originalMcc
          : originalMcc // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      operationAmount: freezed == operationAmount
          ? _value.operationAmount
          : operationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as int?,
      cashbackAmount: freezed == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      hold: freezed == hold
          ? _value.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as bool?,
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonobankFinance implements _MonobankFinance {
  const _$_MonobankFinance(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "mcc") this.mcc,
      @JsonKey(name: "originalMcc") this.originalMcc,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "operationAmount") this.operationAmount,
      @JsonKey(name: "currencyCode") this.currencyCode,
      @JsonKey(name: "commissionRate") this.commissionRate,
      @JsonKey(name: "cashbackAmount") this.cashbackAmount,
      @JsonKey(name: "balance") this.balance,
      @JsonKey(name: "hold") this.hold,
      @JsonKey(name: "receiptId") this.receiptId});

  factory _$_MonobankFinance.fromJson(Map<String, dynamic> json) =>
      _$$_MonobankFinanceFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "time")
  final int? time;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "mcc")
  final int? mcc;
  @override
  @JsonKey(name: "originalMcc")
  final int? originalMcc;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "operationAmount")
  final int? operationAmount;
  @override
  @JsonKey(name: "currencyCode")
  final int? currencyCode;
  @override
  @JsonKey(name: "commissionRate")
  final int? commissionRate;
  @override
  @JsonKey(name: "cashbackAmount")
  final int? cashbackAmount;
  @override
  @JsonKey(name: "balance")
  final int? balance;
  @override
  @JsonKey(name: "hold")
  final bool? hold;
  @override
  @JsonKey(name: "receiptId")
  final String? receiptId;

  @override
  String toString() {
    return 'MonobankFinance(id: $id, time: $time, description: $description, mcc: $mcc, originalMcc: $originalMcc, amount: $amount, operationAmount: $operationAmount, currencyCode: $currencyCode, commissionRate: $commissionRate, cashbackAmount: $cashbackAmount, balance: $balance, hold: $hold, receiptId: $receiptId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonobankFinance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mcc, mcc) || other.mcc == mcc) &&
            (identical(other.originalMcc, originalMcc) ||
                other.originalMcc == originalMcc) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.operationAmount, operationAmount) ||
                other.operationAmount == operationAmount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.commissionRate, commissionRate) ||
                other.commissionRate == commissionRate) &&
            (identical(other.cashbackAmount, cashbackAmount) ||
                other.cashbackAmount == cashbackAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.hold, hold) || other.hold == hold) &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      time,
      description,
      mcc,
      originalMcc,
      amount,
      operationAmount,
      currencyCode,
      commissionRate,
      cashbackAmount,
      balance,
      hold,
      receiptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonobankFinanceCopyWith<_$_MonobankFinance> get copyWith =>
      __$$_MonobankFinanceCopyWithImpl<_$_MonobankFinance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonobankFinanceToJson(
      this,
    );
  }
}

abstract class _MonobankFinance implements MonobankFinance {
  const factory _MonobankFinance(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "time") final int? time,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "mcc") final int? mcc,
          @JsonKey(name: "originalMcc") final int? originalMcc,
          @JsonKey(name: "amount") final int? amount,
          @JsonKey(name: "operationAmount") final int? operationAmount,
          @JsonKey(name: "currencyCode") final int? currencyCode,
          @JsonKey(name: "commissionRate") final int? commissionRate,
          @JsonKey(name: "cashbackAmount") final int? cashbackAmount,
          @JsonKey(name: "balance") final int? balance,
          @JsonKey(name: "hold") final bool? hold,
          @JsonKey(name: "receiptId") final String? receiptId}) =
      _$_MonobankFinance;

  factory _MonobankFinance.fromJson(Map<String, dynamic> json) =
      _$_MonobankFinance.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "time")
  int? get time;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "mcc")
  int? get mcc;
  @override
  @JsonKey(name: "originalMcc")
  int? get originalMcc;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "operationAmount")
  int? get operationAmount;
  @override
  @JsonKey(name: "currencyCode")
  int? get currencyCode;
  @override
  @JsonKey(name: "commissionRate")
  int? get commissionRate;
  @override
  @JsonKey(name: "cashbackAmount")
  int? get cashbackAmount;
  @override
  @JsonKey(name: "balance")
  int? get balance;
  @override
  @JsonKey(name: "hold")
  bool? get hold;
  @override
  @JsonKey(name: "receiptId")
  String? get receiptId;
  @override
  @JsonKey(ignore: true)
  _$$_MonobankFinanceCopyWith<_$_MonobankFinance> get copyWith =>
      throw _privateConstructorUsedError;
}

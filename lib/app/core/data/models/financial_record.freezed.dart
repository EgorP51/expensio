// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancialRecord _$FinancialRecordFromJson(Map<String, dynamic> json) {
  return _FinancialRecord.fromJson(json);
}

/// @nodoc
mixin _$FinancialRecord {
  double get amount => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get isIncome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialRecordCopyWith<FinancialRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialRecordCopyWith<$Res> {
  factory $FinancialRecordCopyWith(
          FinancialRecord value, $Res Function(FinancialRecord) then) =
      _$FinancialRecordCopyWithImpl<$Res, FinancialRecord>;
  @useResult
  $Res call({double amount, String comment, DateTime date, bool isIncome});
}

/// @nodoc
class _$FinancialRecordCopyWithImpl<$Res, $Val extends FinancialRecord>
    implements $FinancialRecordCopyWith<$Res> {
  _$FinancialRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? comment = null,
    Object? date = null,
    Object? isIncome = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FinancialRecordCopyWith<$Res>
    implements $FinancialRecordCopyWith<$Res> {
  factory _$$_FinancialRecordCopyWith(
          _$_FinancialRecord value, $Res Function(_$_FinancialRecord) then) =
      __$$_FinancialRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String comment, DateTime date, bool isIncome});
}

/// @nodoc
class __$$_FinancialRecordCopyWithImpl<$Res>
    extends _$FinancialRecordCopyWithImpl<$Res, _$_FinancialRecord>
    implements _$$_FinancialRecordCopyWith<$Res> {
  __$$_FinancialRecordCopyWithImpl(
      _$_FinancialRecord _value, $Res Function(_$_FinancialRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? comment = null,
    Object? date = null,
    Object? isIncome = null,
  }) {
    return _then(_$_FinancialRecord(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinancialRecord implements _FinancialRecord {
  const _$_FinancialRecord(
      {required this.amount,
      required this.comment,
      required this.date,
      required this.isIncome});

  factory _$_FinancialRecord.fromJson(Map<String, dynamic> json) =>
      _$$_FinancialRecordFromJson(json);

  @override
  final double amount;
  @override
  final String comment;
  @override
  final DateTime date;
  @override
  final bool isIncome;

  @override
  String toString() {
    return 'FinancialRecord(amount: $amount, comment: $comment, date: $date, isIncome: $isIncome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinancialRecord &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, comment, date, isIncome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinancialRecordCopyWith<_$_FinancialRecord> get copyWith =>
      __$$_FinancialRecordCopyWithImpl<_$_FinancialRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinancialRecordToJson(
      this,
    );
  }
}

abstract class _FinancialRecord implements FinancialRecord {
  const factory _FinancialRecord(
      {required final double amount,
      required final String comment,
      required final DateTime date,
      required final bool isIncome}) = _$_FinancialRecord;

  factory _FinancialRecord.fromJson(Map<String, dynamic> json) =
      _$_FinancialRecord.fromJson;

  @override
  double get amount;
  @override
  String get comment;
  @override
  DateTime get date;
  @override
  bool get isIncome;
  @override
  @JsonKey(ignore: true)
  _$$_FinancialRecordCopyWith<_$_FinancialRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

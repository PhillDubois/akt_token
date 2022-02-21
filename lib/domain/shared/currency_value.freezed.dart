// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrencyValueTearOff {
  const _$CurrencyValueTearOff();

  _CurrencyValue call(
      {required double amount,
      required String symbol,
      required double variation,
      required String variationSymbol}) {
    return _CurrencyValue(
      amount: amount,
      symbol: symbol,
      variation: variation,
      variationSymbol: variationSymbol,
    );
  }
}

/// @nodoc
const $CurrencyValue = _$CurrencyValueTearOff();

/// @nodoc
mixin _$CurrencyValue {
  double get amount => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double get variation => throw _privateConstructorUsedError;
  String get variationSymbol => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyValueCopyWith<CurrencyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyValueCopyWith<$Res> {
  factory $CurrencyValueCopyWith(
          CurrencyValue value, $Res Function(CurrencyValue) then) =
      _$CurrencyValueCopyWithImpl<$Res>;
  $Res call(
      {double amount, String symbol, double variation, String variationSymbol});
}

/// @nodoc
class _$CurrencyValueCopyWithImpl<$Res>
    implements $CurrencyValueCopyWith<$Res> {
  _$CurrencyValueCopyWithImpl(this._value, this._then);

  final CurrencyValue _value;
  // ignore: unused_field
  final $Res Function(CurrencyValue) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? symbol = freezed,
    Object? variation = freezed,
    Object? variationSymbol = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as double,
      variationSymbol: variationSymbol == freezed
          ? _value.variationSymbol
          : variationSymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyValueCopyWith<$Res>
    implements $CurrencyValueCopyWith<$Res> {
  factory _$CurrencyValueCopyWith(
          _CurrencyValue value, $Res Function(_CurrencyValue) then) =
      __$CurrencyValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {double amount, String symbol, double variation, String variationSymbol});
}

/// @nodoc
class __$CurrencyValueCopyWithImpl<$Res>
    extends _$CurrencyValueCopyWithImpl<$Res>
    implements _$CurrencyValueCopyWith<$Res> {
  __$CurrencyValueCopyWithImpl(
      _CurrencyValue _value, $Res Function(_CurrencyValue) _then)
      : super(_value, (v) => _then(v as _CurrencyValue));

  @override
  _CurrencyValue get _value => super._value as _CurrencyValue;

  @override
  $Res call({
    Object? amount = freezed,
    Object? symbol = freezed,
    Object? variation = freezed,
    Object? variationSymbol = freezed,
  }) {
    return _then(_CurrencyValue(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      variation: variation == freezed
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as double,
      variationSymbol: variationSymbol == freezed
          ? _value.variationSymbol
          : variationSymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencyValue extends _CurrencyValue {
  const _$_CurrencyValue(
      {required this.amount,
      required this.symbol,
      required this.variation,
      required this.variationSymbol})
      : super._();

  @override
  final double amount;
  @override
  final String symbol;
  @override
  final double variation;
  @override
  final String variationSymbol;

  @override
  String toString() {
    return 'CurrencyValue(amount: $amount, symbol: $symbol, variation: $variation, variationSymbol: $variationSymbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyValue &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.variationSymbol, variationSymbol) ||
                other.variationSymbol == variationSymbol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, symbol, variation, variationSymbol);

  @JsonKey(ignore: true)
  @override
  _$CurrencyValueCopyWith<_CurrencyValue> get copyWith =>
      __$CurrencyValueCopyWithImpl<_CurrencyValue>(this, _$identity);
}

abstract class _CurrencyValue extends CurrencyValue {
  const factory _CurrencyValue(
      {required double amount,
      required String symbol,
      required double variation,
      required String variationSymbol}) = _$_CurrencyValue;
  const _CurrencyValue._() : super._();

  @override
  double get amount;
  @override
  String get symbol;
  @override
  double get variation;
  @override
  String get variationSymbol;
  @override
  @JsonKey(ignore: true)
  _$CurrencyValueCopyWith<_CurrencyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

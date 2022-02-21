// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoCurrencyTearOff {
  const _$CryptoCurrencyTearOff();

  _CryptoCurrency call(
      {required String name,
      required String code,
      required CurrencyValue value}) {
    return _CryptoCurrency(
      name: name,
      code: code,
      value: value,
    );
  }
}

/// @nodoc
const $CryptoCurrency = _$CryptoCurrencyTearOff();

/// @nodoc
mixin _$CryptoCurrency {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  CurrencyValue get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoCurrencyCopyWith<CryptoCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCurrencyCopyWith<$Res> {
  factory $CryptoCurrencyCopyWith(
          CryptoCurrency value, $Res Function(CryptoCurrency) then) =
      _$CryptoCurrencyCopyWithImpl<$Res>;
  $Res call({String name, String code, CurrencyValue value});

  $CurrencyValueCopyWith<$Res> get value;
}

/// @nodoc
class _$CryptoCurrencyCopyWithImpl<$Res>
    implements $CryptoCurrencyCopyWith<$Res> {
  _$CryptoCurrencyCopyWithImpl(this._value, this._then);

  final CryptoCurrency _value;
  // ignore: unused_field
  final $Res Function(CryptoCurrency) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CurrencyValue,
    ));
  }

  @override
  $CurrencyValueCopyWith<$Res> get value {
    return $CurrencyValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$CryptoCurrencyCopyWith<$Res>
    implements $CryptoCurrencyCopyWith<$Res> {
  factory _$CryptoCurrencyCopyWith(
          _CryptoCurrency value, $Res Function(_CryptoCurrency) then) =
      __$CryptoCurrencyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, CurrencyValue value});

  @override
  $CurrencyValueCopyWith<$Res> get value;
}

/// @nodoc
class __$CryptoCurrencyCopyWithImpl<$Res>
    extends _$CryptoCurrencyCopyWithImpl<$Res>
    implements _$CryptoCurrencyCopyWith<$Res> {
  __$CryptoCurrencyCopyWithImpl(
      _CryptoCurrency _value, $Res Function(_CryptoCurrency) _then)
      : super(_value, (v) => _then(v as _CryptoCurrency));

  @override
  _CryptoCurrency get _value => super._value as _CryptoCurrency;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? value = freezed,
  }) {
    return _then(_CryptoCurrency(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CurrencyValue,
    ));
  }
}

/// @nodoc

class _$_CryptoCurrency extends _CryptoCurrency {
  const _$_CryptoCurrency(
      {required this.name, required this.code, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String code;
  @override
  final CurrencyValue value;

  @override
  String toString() {
    return 'CryptoCurrency(name: $name, code: $code, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CryptoCurrency &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, code, value);

  @JsonKey(ignore: true)
  @override
  _$CryptoCurrencyCopyWith<_CryptoCurrency> get copyWith =>
      __$CryptoCurrencyCopyWithImpl<_CryptoCurrency>(this, _$identity);
}

abstract class _CryptoCurrency extends CryptoCurrency {
  const factory _CryptoCurrency(
      {required String name,
      required String code,
      required CurrencyValue value}) = _$_CryptoCurrency;
  const _CryptoCurrency._() : super._();

  @override
  String get name;
  @override
  String get code;
  @override
  CurrencyValue get value;
  @override
  @JsonKey(ignore: true)
  _$CryptoCurrencyCopyWith<_CryptoCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

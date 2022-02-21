// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'investment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvestmentListTearOff {
  const _$InvestmentListTearOff();

  _InvestmentList call(
      {required String name,
      List<CryptoCurrency> cryptos = const <CryptoCurrency>[]}) {
    return _InvestmentList(
      name: name,
      cryptos: cryptos,
    );
  }
}

/// @nodoc
const $InvestmentList = _$InvestmentListTearOff();

/// @nodoc
mixin _$InvestmentList {
  String get name => throw _privateConstructorUsedError;
  List<CryptoCurrency> get cryptos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvestmentListCopyWith<InvestmentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentListCopyWith<$Res> {
  factory $InvestmentListCopyWith(
          InvestmentList value, $Res Function(InvestmentList) then) =
      _$InvestmentListCopyWithImpl<$Res>;
  $Res call({String name, List<CryptoCurrency> cryptos});
}

/// @nodoc
class _$InvestmentListCopyWithImpl<$Res>
    implements $InvestmentListCopyWith<$Res> {
  _$InvestmentListCopyWithImpl(this._value, this._then);

  final InvestmentList _value;
  // ignore: unused_field
  final $Res Function(InvestmentList) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cryptos = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cryptos: cryptos == freezed
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as List<CryptoCurrency>,
    ));
  }
}

/// @nodoc
abstract class _$InvestmentListCopyWith<$Res>
    implements $InvestmentListCopyWith<$Res> {
  factory _$InvestmentListCopyWith(
          _InvestmentList value, $Res Function(_InvestmentList) then) =
      __$InvestmentListCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<CryptoCurrency> cryptos});
}

/// @nodoc
class __$InvestmentListCopyWithImpl<$Res>
    extends _$InvestmentListCopyWithImpl<$Res>
    implements _$InvestmentListCopyWith<$Res> {
  __$InvestmentListCopyWithImpl(
      _InvestmentList _value, $Res Function(_InvestmentList) _then)
      : super(_value, (v) => _then(v as _InvestmentList));

  @override
  _InvestmentList get _value => super._value as _InvestmentList;

  @override
  $Res call({
    Object? name = freezed,
    Object? cryptos = freezed,
  }) {
    return _then(_InvestmentList(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cryptos: cryptos == freezed
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as List<CryptoCurrency>,
    ));
  }
}

/// @nodoc

class _$_InvestmentList extends _InvestmentList {
  const _$_InvestmentList(
      {required this.name, this.cryptos = const <CryptoCurrency>[]})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: const <CryptoCurrency>[])
  @override
  final List<CryptoCurrency> cryptos;

  @override
  String toString() {
    return 'InvestmentList(name: $name, cryptos: $cryptos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvestmentList &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.cryptos, cryptos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(cryptos));

  @JsonKey(ignore: true)
  @override
  _$InvestmentListCopyWith<_InvestmentList> get copyWith =>
      __$InvestmentListCopyWithImpl<_InvestmentList>(this, _$identity);
}

abstract class _InvestmentList extends InvestmentList {
  const factory _InvestmentList(
      {required String name, List<CryptoCurrency> cryptos}) = _$_InvestmentList;
  const _InvestmentList._() : super._();

  @override
  String get name;
  @override
  List<CryptoCurrency> get cryptos;
  @override
  @JsonKey(ignore: true)
  _$InvestmentListCopyWith<_InvestmentList> get copyWith =>
      throw _privateConstructorUsedError;
}

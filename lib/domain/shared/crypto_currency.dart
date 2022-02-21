import 'package:akt_token/domain/shared/currency_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_currency.freezed.dart';

@freezed
class CryptoCurrency with _$CryptoCurrency {
  const CryptoCurrency._();

  const factory CryptoCurrency({
    required String name,
    required String code,
    required CurrencyValue value,
  }) = _CryptoCurrency;
}

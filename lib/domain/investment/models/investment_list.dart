import 'package:akt_token/domain/shared/crypto_currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_list.freezed.dart';

@freezed
class InvestmentList with _$InvestmentList {
  const InvestmentList._();

  const factory InvestmentList({
    required String name,
    @Default(<CryptoCurrency>[]) List<CryptoCurrency> cryptos,
  }) = _InvestmentList;
}

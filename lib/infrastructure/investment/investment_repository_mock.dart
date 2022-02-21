// ignore_for_file: long-method
import 'package:akt_token/domain/investment/i_investment_repository.dart';
import 'package:akt_token/domain/shared/crypto_currency.dart';
import 'package:akt_token/domain/shared/currency_value.dart';
import 'package:dartz/dartz.dart';
import 'package:akt_token/domain/investment/models/investment_list.dart';
import 'package:akt_token/domain/investment/models/investment_failure.dart';

class InvestmentRepositoryMock implements IInvestmentRepository {
  @override
  Future<Either<InvestmentFailure, List<InvestmentList>>>
      fetchInvestments() async {
    await Future.delayed(const Duration(seconds: 3));

    const cryptos = <CryptoCurrency>[
      CryptoCurrency(
        code: 'BTC',
        name: 'Bitcoin',
        value: CurrencyValue(
          amount: 1234.12,
          symbol: '€',
          variation: -0.12,
          variationSymbol: '%',
        ),
      ),
      CryptoCurrency(
        code: 'ETH',
        name: 'Ethereum',
        value: CurrencyValue(
          amount: 0.9999,
          symbol: '€',
          variation: 2.5,
          variationSymbol: '%',
        ),
      ),
      CryptoCurrency(
        code: 'BTC',
        name: 'Bitcoin',
        value: CurrencyValue(
          amount: 1234.12,
          symbol: '€',
          variation: -0.123,
          variationSymbol: '%',
        ),
      ),
      CryptoCurrency(
        code: 'ETH',
        name: 'Ethereum',
        value: CurrencyValue(
          amount: 0.9999,
          symbol: '€',
          variation: 321.02,
          variationSymbol: '%',
        ),
      ),
      CryptoCurrency(
        code: 'BTC',
        name: 'Bitcoin',
        value: CurrencyValue(
          amount: 1234.12,
          symbol: '€',
          variation: -1.02,
          variationSymbol: '%',
        ),
      ),
      CryptoCurrency(
        code: 'ETH',
        name: 'Ethereum',
        value: CurrencyValue(
          amount: 0.9999,
          symbol: '€',
          variation: 2.02,
          variationSymbol: '%',
        ),
      ),
    ];

    return right(const [
      InvestmentList(
        name: 'Cryptos',
        cryptos: cryptos,
      ),
      InvestmentList(
        name: 'Tokens',
        cryptos: cryptos,
      ),
      InvestmentList(
        name: 'Cryptos',
        cryptos: cryptos,
      ),
      InvestmentList(
        name: 'Tokens',
        cryptos: cryptos,
      ),
    ]);
  }
}

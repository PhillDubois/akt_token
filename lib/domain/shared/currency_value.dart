import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_value.freezed.dart';

@freezed
class CurrencyValue with _$CurrencyValue {
  const CurrencyValue._();

  const factory CurrencyValue({
    required double amount,
    required String symbol,
    required double variation,
    required String variationSymbol,
  }) = _CurrencyValue;

  bool get valueHasIncreased => variation > 0;

  String get formatted => "${amount.toStringAsFixed(2)} $symbol";
  String get formattedVariation =>
      "${variation.abs().toStringAsFixed(2)} $variationSymbol";
}

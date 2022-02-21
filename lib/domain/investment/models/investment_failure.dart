import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_failure.freezed.dart';

@freezed
class InvestmentFailure with _$InvestmentFailure {
  const factory InvestmentFailure.unexpected() = _Unexpected;
  const factory InvestmentFailure.connexion() = _Connexion;
}

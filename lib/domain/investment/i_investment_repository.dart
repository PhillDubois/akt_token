import 'package:akt_token/domain/investment/models/investment_failure.dart';
import 'package:akt_token/domain/investment/models/investment_list.dart';
import 'package:dartz/dartz.dart';

abstract class IInvestmentRepository {
  Future<Either<InvestmentFailure, List<InvestmentList>>> fetchInvestments();
}

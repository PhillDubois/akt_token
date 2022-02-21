import 'package:akt_token/domain/investment/i_investment_repository.dart';
import 'package:dartz/dartz.dart';

import 'models/investment_failure.dart';
import 'models/investment_list.dart';

class InvestmentController {
  InvestmentController({
    required IInvestmentRepository investmentRepository,
  }) : _investmentRepository = investmentRepository;

  final IInvestmentRepository _investmentRepository;

  Future<Either<InvestmentFailure, List<InvestmentList>>>
      fetchInvestments() async {
    return _investmentRepository.fetchInvestments();
  }
}

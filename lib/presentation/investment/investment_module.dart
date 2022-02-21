import 'package:akt_token/domain/investment/i_investment_repository.dart';
import 'package:akt_token/domain/investment/investment_controller.dart';
import 'package:akt_token/infrastructure/investment/investment_repository_mock.dart';
import 'package:akt_token/presentation/investment/investment_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../investment/investment_page.dart';

class InvestmentModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<IInvestmentRepository>((i) => InvestmentRepositoryMock()),
        Bind.factory(
          (i) => InvestmentController(investmentRepository: i.get()),
        ),
        Bind.singleton(
          (i) => InvestmentCubit(investmentController: i.get()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          InvestmentPage.routeName,
          child: (context, args) => const InvestmentPage(),
        ),
      ];
}

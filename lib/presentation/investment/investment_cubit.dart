import 'package:akt_token/domain/investment/investment_controller.dart';
import 'package:akt_token/domain/investment/models/investment_failure.dart';
import 'package:akt_token/domain/investment/models/investment_list.dart';
import 'package:akt_token/shared/models/page_state.dart';
import 'package:bloc/bloc.dart';

typedef InvestmentPageState
    = PageState<List<InvestmentList>, InvestmentFailure>;

class InvestmentCubit extends Cubit<InvestmentPageState> {
  InvestmentCubit({
    required InvestmentController investmentController,
  })  : _investmentController = investmentController,
        super(
          const InvestmentPageState.idle(),
        );

  final InvestmentController _investmentController;

  Future<void> _fetch() async {
    emit(const InvestmentPageState.loading());
    final result = await _investmentController.fetchInvestments();
    result.fold(
      (failure) => emit(InvestmentPageState.error(failure: failure)),
      (List<InvestmentList> data) => emit(InvestmentPageState.success(data)),
    );
  }

  Future<void> retry() async {
    return _fetch();
  }

  Future<void> start() async {
    if (state == const InvestmentPageState.idle()) {
      return _fetch();
    }
  }
}

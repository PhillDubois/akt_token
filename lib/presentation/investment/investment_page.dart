import 'package:akt_token/presentation/investment/investment_cubit.dart';
import 'package:akt_token/presentation/investment/widgets/investment_expandable_app_bar.dart';
import 'package:akt_token/presentation/investment/widgets/stocks_list.dart';
import 'package:akt_token/presentation/theme/app_dimensions.dart';
import 'package:akt_token/shared/extensions/build_context_ext.dart';
import 'package:akt_token/shared/models/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/investment/models/investment_failure.dart';
import '../../domain/investment/models/investment_list.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState
    extends ModularState<InvestmentPage, InvestmentCubit> {
  @override
  void didChangeDependencies() {
    store.start();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: context.ph(0.5),
            toolbarHeight: kToolbarHeight,
            pinned: true,
            title: Text(
              context.tr.investmentsTitle,
              style: context.textTheme.headline4,
            ),
            flexibleSpace: const InvestmentExpandableAppBar(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppDimensions.basePagePadding,
                left: AppDimensions.basePagePadding,
              ),
              child: BlocBuilder<InvestmentCubit, InvestmentPageState>(
                bloc: cubit,
                builder: (context, state) => state.map(
                  idle: (idle) => const SizedBox(
                    child: Text('idle'),
                  ),
                  loading: (loading) => SizedBox(
                    height: context.ph(0.4),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  success: (success) => Padding(
                    padding: EdgeInsets.only(bottom: context.ph(0.5)),
                    child: Column(
                      children: success.data
                          .map(
                            (data) => StocksList(
                              title: data.name,
                              cryptos: data.cryptos,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  error: (error) => SizedBox(
                    height: context.ph(0.4),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            error.failure!.map(
                              unexpected: (_) =>
                                  context.tr.investmentErrorUnexpected,
                              connexion: (_) =>
                                  context.tr.investmentErrorNetwork,
                            ),
                          ),
                          ElevatedButton(
                            child: Text(context.tr.retry),
                            onPressed: cubit.retry,
                          ),
                        ],
                      ),
                    ),
                  ),
                  empty: (empty) => SizedBox(
                    height: context.ph(0.4),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            child: Text(context.tr.retry),
                            onPressed: cubit.retry,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

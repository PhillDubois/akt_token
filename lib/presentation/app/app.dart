import 'package:akt_token/presentation/theme/app_theme.dart';
import 'package:akt_token/shared/extensions/build_context_ext.dart';
import 'package:akt_token/presentation/app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
        ],
        onGenerateTitle: (context) => context.tr.appTitle,
        theme: AppTheme.dark,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}

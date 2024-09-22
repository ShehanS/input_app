import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';

import '../../infrastructure/bloc/app_config/app_config_bloc.dart';
import '../../infrastructure/bloc/localization/localization_bloc.dart';
import '../../infrastructure/domain/globle/router/app_router.dart';
import '../../infrastructure/injection/injection.dart';
import '../../infrastructure/services/localization_service.dart';

@RoutePage()
class AppWidgetPage extends StatelessWidget {
  const AppWidgetPage({Key? key}) : super(key: key);

  Future<void> hideScreen() async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      FlutterSplashScreen.hide();
    });
  }

  @override
  Widget build(BuildContext context) {
    late AppRouter appRouter;
    if (!getIt.isRegistered<AppRouter>()) {
      getIt.registerSingleton<AppRouter>(AppRouter());
      if (kDebugMode) {
        print('AppRouter registered successfully');
      }
    }
    appRouter = getIt<AppRouter>();
    hideScreen();
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<LocalizationBloc>()),
          BlocProvider(create: (context) => getIt<AppConfigBloc>()),
          BlocProvider(create: (context) => getIt<ApplicationBloc>())
        ],
        child: BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (innerContext, innerState) {
          return MaterialApp.router(
            title: "Downtime Pro",
            routerConfig: appRouter.config(),
            theme: ThemeData(useMaterial3: true),
            locale: innerState.local,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('es'),
            ],
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

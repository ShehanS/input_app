import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../infrastructure/bloc/app_config/app_config_bloc.dart';
import '../../infrastructure/bloc/localization/localization_bloc.dart';
import '../../infrastructure/domain/globle/router/app_router.dart';
import '../../infrastructure/injection/injection.dart';
import '../../infrastructure/services/localization_service.dart';

@RoutePage()
class AppWidgetPage extends StatelessWidget {
  const AppWidgetPage({Key? key}) : super(key: key);

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

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<LocalizationBloc>()),
          BlocProvider(create: (context) => getIt<AppConfigBloc>())
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

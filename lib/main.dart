import 'package:downtime_pro/infrastructure/bloc/app_config/app_config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'application/pages/landing_page.dart';
import 'application/pages/token_page.dart';
import 'application/router/router.dart';
import 'application/user_page.dart';
import 'infrastructure/injection/injection.dart';
import 'infrastructure/bloc/localization/localization_bloc.dart';
import 'infrastructure/services/localization_service.dart';

void main() async {
  await initHiveForFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  configureDependencies(Environment.dev);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<LocalizationBloc>()),
          BlocProvider(create: (context) => getIt<AppConfigBloc>())
        ],
        child: BlocBuilder<LocalizationBloc, LocalizationState>(
          builder: (innerContext, innerState) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              locale: innerState.local,
              // Ensure this matches the property in LocalizationState
              localizationsDelegates: const [
                AppLocalizations.delegate,
                // Ensure this is properly set up
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // Added this for iOS localizations
              ],
              supportedLocales: const [
                Locale('en'),
                Locale('es'),
              ],
              debugShowCheckedModeBanner: false,
              home: const TokenPage(),
            );
          },
        ));
  }
}

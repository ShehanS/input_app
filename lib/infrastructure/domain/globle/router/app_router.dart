import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/application/pages/login_page/login_page.dart';
import 'package:downtime_pro/infrastructure/domain/globle/router/config_router.dart';

import '../../../../application/pages/app_widget_page.dart';
import '../../../../application/pages/landing_page/landing_page.dart';
import '../../../../application/pages/splash_page.dart';
import '../../../../application/pages/token_page/token_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final configRouter = ConfigRouter();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AppWidgetRoute.page),
    AutoRoute(page: TokenRoute.page),
    AutoRoute(page: LandingRoute.page),
    AutoRoute(page: LoginRoute.page, initial: true, guards: [configRouter]),
  ];
}

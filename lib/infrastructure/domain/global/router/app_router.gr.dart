// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddDowntimeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddDowntimePage(),
      );
    },
    AppWidgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppWidgetPage(),
      );
    },
    LandingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LandingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TokenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TokenPage(),
      );
    },
  };
}

/// generated route for
/// [AddDowntimePage]
class AddDowntimeRoute extends PageRouteInfo<void> {
  const AddDowntimeRoute({List<PageRouteInfo>? children})
      : super(
          AddDowntimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddDowntimeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AppWidgetPage]
class AppWidgetRoute extends PageRouteInfo<void> {
  const AppWidgetRoute({List<PageRouteInfo>? children})
      : super(
          AppWidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppWidgetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TokenPage]
class TokenRoute extends PageRouteInfo<void> {
  const TokenRoute({List<PageRouteInfo>? children})
      : super(
          TokenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

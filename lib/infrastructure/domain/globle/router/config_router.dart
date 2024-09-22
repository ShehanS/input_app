import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/infrastructure/const/app_const.dart';
import 'package:downtime_pro/infrastructure/domain/globle/router/app_router.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfigRouter extends AutoRouteGuard {
  final  storageService = StorageService();

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    try {
      final config = await storageService.getValue(AppConstants.APP_CONFIG);
      if (config == null) {
        router.navigate(const TokenRoute());
      } else {
        resolver.next(true);
      }
    } catch (e) {
      print('Error retrieving config: $e');
      router.navigate(const TokenRoute());
    }
  }
}

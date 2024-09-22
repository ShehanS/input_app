// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:downtime_pro/application/widget/custom_drawer/custom_app_drawer.dart'
    as _i696;
import 'package:downtime_pro/infrastructure/bloc/app_config/app_config_bloc.dart'
    as _i241;
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart'
    as _i42;
import 'package:downtime_pro/infrastructure/bloc/localization/localization_bloc.dart'
    as _i233;
import 'package:downtime_pro/infrastructure/bloc/metadata/meta_data_bloc.dart'
    as _i213;
import 'package:downtime_pro/infrastructure/bloc/operation_data/operation_data_bloc.dart'
    as _i503;
import 'package:downtime_pro/infrastructure/bloc/user/user_bloc.dart' as _i754;
import 'package:downtime_pro/infrastructure/domain/globle/router/config_router.dart'
    as _i696;
import 'package:downtime_pro/infrastructure/injection/injection.dart' as _i411;
import 'package:downtime_pro/infrastructure/repository/app_config_repository.dart'
    as _i786;
import 'package:downtime_pro/infrastructure/repository/metadata_repository.dart'
    as _i722;
import 'package:downtime_pro/infrastructure/repository/operation_data_repository.dart'
    as _i377;
import 'package:downtime_pro/infrastructure/services/counter_service.dart'
    as _i882;
import 'package:downtime_pro/infrastructure/services/graphql_service.dart'
    as _i277;
import 'package:downtime_pro/infrastructure/services/storage_service.dart'
    as _i598;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localizationModule = _$LocalizationModule();
    gh.factory<_i754.UserBloc>(() => _i754.UserBloc());
    gh.factory<_i42.ApplicationBloc>(() => _i42.ApplicationBloc());
    gh.factory<_i696.ConfigRouter>(() => _i696.ConfigRouter());
    gh.singleton<_i277.GraphQLService>(() => _i277.GraphQLService());
    gh.singleton<_i598.StorageService>(() => _i598.StorageService());
    gh.singleton<_i882.CounterService>(() => _i882.CounterService());
    gh.lazySingleton<_i233.LocalizationBloc>(
        () => localizationModule.localizationBloc());
    gh.lazySingleton<_i786.AppConfigRepository>(
        () => _i786.AppDataRepositoryImpl(gh<_i277.GraphQLService>()));
    gh.factory<_i696.CustomAppDrawer>(
        () => _i696.CustomAppDrawer(key: gh<_i409.Key>()));
    gh.lazySingleton<_i377.OperationDataRepository>(
        () => _i377.OperationDataImpl(gh<_i277.GraphQLService>()));
    gh.factory<_i241.AppConfigBloc>(() => _i241.AppConfigBloc(
          gh<_i786.AppConfigRepository>(),
          gh<_i277.GraphQLService>(),
          gh<_i598.StorageService>(),
        ));
    gh.lazySingleton<_i722.MetaDataRepository>(
        () => _i722.MetaDataRepositoryImpl(gh<_i277.GraphQLService>()));
    gh.factory<_i503.OperationDataBloc>(
        () => _i503.OperationDataBloc(gh<_i377.OperationDataRepository>()));
    gh.factory<_i213.MetaDataBloc>(
        () => _i213.MetaDataBloc(gh<_i722.MetaDataRepository>()));
    return this;
  }
}

class _$LocalizationModule extends _i411.LocalizationModule {}

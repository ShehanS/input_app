import 'package:downtime_pro/infrastructure/injection/injection.config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../bloc/localization/localization_bloc.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) => getIt.init();
@module
abstract class LocalizationModule {
  @lazySingleton
  LocalizationBloc localizationBloc() => LocalizationBloc();
}
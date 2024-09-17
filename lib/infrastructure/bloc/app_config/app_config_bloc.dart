import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/repository/app_config_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'app_config_event.dart';

part 'app_config_state.dart';

part 'app_config_bloc.freezed.dart';

@injectable
class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final AppConfigRepository appConfigRepository;

  AppConfigBloc(this.appConfigRepository) : super(AppConfigState.initial()) {
    on<AppConfigEvent>((event, emit) {
    });
    on<GetAppConfig>(_getAppConfig);
  }

  void _getAppConfig(GetAppConfig event, Emitter<AppConfigState> emit) async {
    log("Requesting metadata using GraphQL client...");
    final result = await appConfigRepository.appConfig(event.token);
    result.fold((l) {
      log("Some issue happening");
    }, (r) {
      emit(state.copyWith(appConfig: r));
    });
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/repository/app_config_repository.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:downtime_pro/infrastructure/const/app_const.dart';

import 'package:downtime_pro/infrastructure/domain/global/model/error_dialog_props.dart';
import 'package:downtime_pro/infrastructure/services/graphql_service.dart';

part 'app_config_event.dart';

part 'app_config_state.dart';

part 'app_config_bloc.freezed.dart';

@injectable
class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final AppConfigRepository appConfigRepository;
  final GraphQLService graphqlService;
  final StorageService storageService;

  AppConfigBloc(
      this.appConfigRepository, this.graphqlService, this.storageService)
      : super(AppConfigState.initial()) {
    on<AppConfigEvent>((event, emit) {});
    on<GetAppConfig>(_getAppConfig);
    on<ClearErrorDialogProps>(_clearErrorDialogProps);
  }

  void _getAppConfig(GetAppConfig event, Emitter<AppConfigState> emit) async {
    log("Requesting metadata using GraphQL client...");
    emit(state.copyWith(isLoading: true));
    final result = await appConfigRepository.appConfig(event.token);
    result.fold((l) {
      log("Some issue happening");
      emit(state.copyWith(
          errorDialogProps:
              ErrorDialogProps(title: "Sync Issue", message: l, isOpen: true),
          isLoading: false));
    }, (r) {
      final jsonString = jsonEncode(r);
      storageService
          .setValue(AppConstants.APP_CONFIG, jsonString)
          .whenComplete(() => log("config has been saved!!"));
      emit(state.copyWith(isLoading: false, appConfig: r));
    });
  }

  void _clearErrorDialogProps(
      ClearErrorDialogProps event, Emitter<AppConfigState> emit) {
    log("clear error props");
    emit(state.copyWith(
        errorDialogProps:
            ErrorDialogProps(message: "", title: "", isOpen: false)));
  }
}

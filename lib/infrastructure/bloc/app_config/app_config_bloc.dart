import 'dart:collection';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/domain/app_config/entity/app_config_entity.dart';
import 'package:downtime_pro/infrastructure/repository/app_config_repository.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../const/app_const.dart';
import '../../domain/globle/model/error_dialog_props.dart';
import '../../services/graphql_service.dart';

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
      emit(state.copyWith(isLoading: false));
      log("Some issue happening");
      emit(state.copyWith(
          errorDialogProps: ErrorDialogProps(
              title: "Sync Issue",
              message: l.toString(),
              isOpen: true)));
    }, (r) {
      storageService
          .setValue(APP_CONFIG, r.toString())
          .whenComplete(() => log("config has been saved!!"));
      emit(state.copyWith(isLoading: false));
      emit(state.copyWith(appConfig: r));
    });
  }

  void _clearErrorDialogProps(
      ClearErrorDialogProps event, Emitter<AppConfigState> emit) {
    log("clear error props");
    emit(state.copyWith(errorDialogProps: ErrorDialogProps(message: "", title: "", isOpen: false)));
  }
}

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/const/app_const.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:downtime_pro/infrastructure/domain/global/model/station.dart';

import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'package:downtime_pro/infrastructure/domain/resource/model/factory_resource.dart';

part 'application_event.dart';

part 'application_state.dart';

part 'application_bloc.freezed.dart';

@injectable
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final storageService = StorageService();

  ApplicationBloc() : super(ApplicationState.initial()) {
    on<ApplicationEvent>((event, emit) {});
    on<ChangeStation>(_changeStation);
    on<SetDefaultStation>(_setDefaultStation);
    on<SelectDepartment>(_selectDepartment);
    on<SelectResource>(_selectResource);
  }

  void _changeStation(ChangeStation event, Emitter<ApplicationState> emit) {
    log("change station ==>${event.station.orgKey}");
    final selectedStationJsonStr = jsonEncode(event.station);
    storageService
        .setValue(AppConstants.SELECTED_STATION, selectedStationJsonStr)
        .whenComplete(() => log("station change saved!!"));
    emit(state.copyWith(station: event.station, deptIssueList: []));
  }

  void _setDefaultStation(
      SetDefaultStation event, Emitter<ApplicationState> emit) async {
    log("set default station");
    final value = await storageService.getValue(AppConstants.SELECTED_STATION);
    if (value != null) {
      final station = jsonDecode(value);
      emit(state.copyWith(station: Station.fromJson(station)));
    }
  }

  void _selectResource(SelectResource event, Emitter<ApplicationState> emit) {
    log("change resource ==>${event.resource.resourceName}");
    emit(state.copyWith(resource: event.resource));
  }

  void _selectDepartment(
      SelectDepartment event, Emitter<ApplicationState> emit) {
    emit(state.copyWith(
        deptIssueList: event.deptIssueList ?? [], color: event.color));
  }
}

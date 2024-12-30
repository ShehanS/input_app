import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/const/app_const.dart';
import 'package:downtime_pro/infrastructure/repository/timer_repository.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:downtime_pro/infrastructure/domain/global/model/station.dart';

import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'package:downtime_pro/infrastructure/domain/resource/model/factory_resource.dart';

import 'package:downtime_pro/infrastructure/domain/create_downtime/model/downtime_event.dart';

part 'application_event.dart';

part 'application_state.dart';

part 'application_bloc.freezed.dart';

@injectable
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final storageService = StorageService();
  List<DowntimeEvent> taskList = [];
  final TimerRepository timerRepository;
  Timer? _centralTimer;

  ApplicationBloc(this.timerRepository) : super(ApplicationState.initial()) {
    _startTimer();

    on<ApplicationEvent>((event, emit) {});
    on<ChangeStation>(_changeStation);
    on<SetDefaultStation>(_setDefaultStation);
    on<SelectDepartment>(_selectDepartment);
    on<SelectResource>(_selectResource);
    on<AddDowntime>(_addDowntime);
    on<PauseDowntime>(_pauseDowntimeTask);
    on<ResumeDowntime>(_resumeDowntimeTask);
    on<StopDowntime>(_stopDowntimeTask);
  }

  void _addDowntime(AddDowntime event, Emitter<ApplicationState> emit) async {
    final newDowntime = [...?state.downtimeEventList, event.downtimeEvent];
    emit(state.copyWith(downtimeEventList: newDowntime));
  }

  void _startTimer() {
    log("Fire start timer...");
    _centralTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final updatedDowntimeTasks = state.downtimeEventList?.map((event) {
        if (event.isRunning && !event.isPaused) {
          return event.copyWith(seconds: (event.seconds ?? 0) + 1);
        }
        return event;
      }).toList();
      emit(state.copyWith(downtimeEventList: updatedDowntimeTasks));
    });
  }

  void _pauseDowntimeTask(PauseDowntime event, Emitter<ApplicationState> emit) {
    log("Pause downtime task ${event.index}...");
    final updatedDowntimeTasks =
        state.downtimeEventList?.asMap().entries.map((entry) {
      final index = entry.key;
      final e = entry.value;
      if (index == event.index) {
        return e.copyWith(isPaused: true);
      }
      return e;
    }).toList();
    emit(state.copyWith(downtimeEventList: updatedDowntimeTasks));
  }

  void _resumeDowntimeTask(
      ResumeDowntime event, Emitter<ApplicationState> emit) {
    log("Resume downtime task ${event.index}...");
    final updatedDowntimeTasks =
        state.downtimeEventList?.asMap().entries.map((entry) {
      final index = entry.key;
      final e = entry.value;
      if (index == event.index) {
        return e.copyWith(isPaused: false);
      }
      return e;
    }).toList();
    emit(state.copyWith(downtimeEventList: updatedDowntimeTasks));
  }

  void _stopDowntimeTask(StopDowntime event, Emitter<ApplicationState> emit) {
    log("Resume downtime task ${event.index}...");
    final updatedDowntimeTasks =
        state.downtimeEventList?.asMap().entries.map((entry) {
      final index = entry.key;
      final e = entry.value;
      if (index == event.index) {
        return e.copyWith(isRunning: false, seconds: 0);
      }
      return e;
    }).toList();
    emit(state.copyWith(downtimeEventList: updatedDowntimeTasks));
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

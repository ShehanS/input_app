import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer';
import 'package:injectable/injectable.dart';

import '../../domain/globle/model/station_model.dart';

part 'application_event.dart';

part 'application_state.dart';

part 'application_bloc.freezed.dart';

@injectable
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationState.initial()) {
    on<ApplicationEvent>((event, emit) {});
    on<ChangeStation>(_changeStation);
  }

  void _changeStation(ChangeStation event, Emitter<ApplicationState> emit) {
    log("change station ==>${event.station.orgKey}");
    emit(state.copyWith(station: event.station));
  }
}

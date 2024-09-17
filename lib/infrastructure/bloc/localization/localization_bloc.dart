import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';
class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationState.initial()) {
    on<LocalizationEvent>((event, emit) {});
    on<ChangeLocalization>(_reqChangeLocalization);
  }

  void _reqChangeLocalization(
      ChangeLocalization event, Emitter<LocalizationState> emit) {
    emit(state.copyWith(local: event.local));
  }
}

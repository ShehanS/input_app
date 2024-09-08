import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/domain/user/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:equatable/equatable.dart';
import 'dart:developer';
part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';
@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {

    on<UserEvent>((event, emit) {});

    on<CreateUser>(_onCreateUser);
  }

  void _onCreateUser(CreateUser event, Emitter<UserState> emit) {
    log("new user >>>> :${event.user}");
    emit(state.copyWith(user: event.user));
  }
}

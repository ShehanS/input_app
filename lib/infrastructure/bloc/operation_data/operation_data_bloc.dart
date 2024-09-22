import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/domain/issue_list/entity/issue_list_entity.dart';
import 'package:downtime_pro/infrastructure/repository/operation_data_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/globle/model/error_dialog_props.dart';
import '../../domain/metadata/model/factory_issue_list_entity.dart';

part 'operation_data_event.dart';

part 'operation_data_state.dart';

part 'operation_data_bloc.freezed.dart';

@injectable
class OperationDataBloc extends Bloc<OperationDataEvent, OperationDataState> {
  final OperationDataRepository operationDataRepository;

  OperationDataBloc(this.operationDataRepository)
      : super(OperationDataState.initial()) {
    on<OperationDataEvent>((event, emit) {});
    on<GetIssueList>(_getIssueList);
    on<ClearErrorDialogProps>(_clearErrorDialogProps);
  }

  void _getIssueList(
      GetIssueList event, Emitter<OperationDataState> emit) async {
    emit(state.copyWith(isLoading: true));
    log("Requesting metadata using GraphQL client...");
    final result = await operationDataRepository.issueList(event.orgKey);
    result.fold((l) {
      emit(state.copyWith(isLoading: false));
      log("Some issue happening");
      emit(state.copyWith(
          errorDialogProps: ErrorDialogProps(
              title: "Sync Factory Issue List", message: "Cannot fetch factory issue list", isOpen: true),
          isLoading: false));
    }, (r) {
      log(r.toString());
      emit(state.copyWith(isLoading: false, issueList: r));
    });
  }

  void _clearErrorDialogProps(
      ClearErrorDialogProps event, Emitter<OperationDataState> emit) {
    log("clear error props");
    emit(state.copyWith(
        errorDialogProps:
            ErrorDialogProps(message: "", title: "", isOpen: false)));
  }
}

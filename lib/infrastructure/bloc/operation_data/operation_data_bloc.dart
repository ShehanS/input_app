import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/repository/operation_data_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:downtime_pro/infrastructure/domain/global/model/error_dialog_props.dart';

import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';

import 'package:downtime_pro/infrastructure/domain/resource/model/factory_resource.dart';

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
    on<GetFactoryResource>(_getFactoryResource);
  }

  void _getIssueList(
      GetIssueList event, Emitter<OperationDataState> emit) async {
    log("Requesting metadata using GraphQL client...");
    emit(state.copyWith(isLoading: true));
    final result = await operationDataRepository.fetchFactoryIssueList(
        event.orgKey, event.fetchPolicy);
    result.fold((l) {
      log("Some issue happening");
      emit(state.copyWith(
          errorDialogProps: ErrorDialogProps(
              title: "Sync Factory Issue List",
              message: "Cannot fetch factory issue list",
              isOpen: true),
          isLoading: false));
    }, (r) {
      List<SubIssueList> issueList = [];
      r.forEach((factoryIssueList) {
        final subList = factoryIssueList.issueList;
        if (subList!.isNotEmpty) {
          subList.forEach((issue) => {issueList.add(issue)});
        }
      });

      emit(state.copyWith(isLoading: false, issueList: issueList));
    });
  }

  Future<void> _getFactoryResource(
      GetFactoryResource event, Emitter<OperationDataState> emit) async {
    log("Requesting factory resource using GraphQL client...");
    emit(state.copyWith(isLoading: true));
    final result = await operationDataRepository.fetchFactoryResource(
        event.orgKey, event.fetchPolicy);
    result.fold((l) {
      log("Some issue happening");
      emit(state.copyWith(
          errorDialogProps: ErrorDialogProps(
              title: "Sync Factory Resources",
              message: "Cannot fetch factory resources",
              isOpen: true),
          isLoading: false));
    }, (r) {
      List<Resource> resourcesList = [];
      r.forEach((factoryResource) {
        final resources = factoryResource.resources;
        if (resources!.isNotEmpty) {
          resources.forEach((resource) => {resourcesList.add(resource)});
        }
      });

      emit(state.copyWith(isLoading: false, resources: resourcesList));
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

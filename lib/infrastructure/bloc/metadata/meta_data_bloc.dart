import 'package:bloc/bloc.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:downtime_pro/infrastructure/repository/metadata_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer';
import 'package:injectable/injectable.dart';

part 'meta_data_event.dart';

part 'meta_data_state.dart';

part 'meta_data_bloc.freezed.dart';

@injectable
class MetaDataBloc extends Bloc<MetaDataEvent, MetaDataState> {
  final MetaDataRepository metaDataRepository;

  MetaDataBloc(this.metaDataRepository) : super(MetaDataState.initial()) {
    on<MetaDataEvent>((event, emit) {});
    on<GetFactoryIssueList>(_reqMetaData);
  }

  void _reqMetaData(
      GetFactoryIssueList event, Emitter<MetaDataState> emit) async {
    log("Requesting metadata using GraphQL client...");
    final result = await metaDataRepository.factoryIssueList(
        event.factoryId, event.module);
    result.fold((l) {
      log("Some issue happening");
    }, (r) {
      emit(state.copyWith(factoryIssueList: r));
    });
    try {} catch (e) {
      log("Error fetching metadata: $e");
    }
  }
}

part of 'application_bloc.dart';

@freezed
class ApplicationState extends Equatable with _$ApplicationState {
  ApplicationState._();
  factory ApplicationState.initial() => ApplicationState(station: null);
  factory ApplicationState({StationModel? station}) =
      _ApplicationState;

  @override
  List<Object?> get props => [station];
}

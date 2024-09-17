part of 'localization_bloc.dart';

@freezed
class LocalizationState extends Equatable with _$LocalizationState {
  LocalizationState._();

  factory LocalizationState.initial() => LocalizationState(local: const Locale('en'));

  factory LocalizationState({required Locale local}) = _LocalizationState;

  @override
  List<Object?> get props => [local];
}

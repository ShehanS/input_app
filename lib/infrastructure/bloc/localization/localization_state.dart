part of 'localization_bloc.dart';

@freezed
class LocalizationState extends Equatable with _$LocalizationState {
  LocalizationState._();

  factory LocalizationState.initial() => LocalizationState(lan: 'en');

  factory LocalizationState({required String lan}) = _LocalizationState;

  @override
  List<Object?> get props => [lan];
}

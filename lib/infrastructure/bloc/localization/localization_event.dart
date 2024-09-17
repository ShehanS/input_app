part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  const factory LocalizationEvent.started() = _Started;
  const factory LocalizationEvent.changeLocalization(Locale local) = ChangeLocalization;
}
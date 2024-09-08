part of 'user_bloc.dart';

@freezed
class UserState extends Equatable with _$UserState {
  UserState._();
  factory UserState.initial() => UserState(user: null);
  factory UserState({UserModel? user}) = _UserState;

  @override
  List<Object?> get props => [
    user
  ];


}

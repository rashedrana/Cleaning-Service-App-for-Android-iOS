part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState(
      String error,
      bool isAuthenticated,
      bool isLoading,
      bool resetLink,
      UserData userData,
      List<UserData> userDataList,
      double lat,
      double long) = _AuthState;

  factory AuthState.initial() => const AuthState("", false, false, false,
      UserData("", "", "", "", "", true, 0, 0, 0), [], 0, 0);
}

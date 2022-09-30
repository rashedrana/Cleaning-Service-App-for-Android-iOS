part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp(
      String email, String password, UserData userData) = SignupEvent;
  const factory AuthEvent.login(String login, String password) = LoginEvent;
  const factory AuthEvent.updateUserData(UserData userData) = UpdateUserData;
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.getUserList() = UserPList;
  // const factory AuthEvent.getUserLocation() = GetUserLocation;
  const factory AuthEvent.signedOut() = SignedOut;
  const factory AuthEvent.resetPassword(String email) = ResetPassword;
  const factory AuthEvent.resetState() = ResetState;
}

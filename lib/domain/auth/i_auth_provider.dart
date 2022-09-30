import 'package:mobile_cleaning_service/domain/core/failure.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthProvider {
  UserData get user;
  set user(UserData user);

  FirebaseAuth get fireAuth => FirebaseAuth.instance;

  Future<Option<UserData>> getSignedInUser();
  Future<Either<Failure, Unit>> signUp(
    String emailAddress,
    String password,
    UserData userData,
  );
  Future<Either<Failure, Unit>> updateUserData(UserData user, String userId);

  Future<Either<Failure, Unit>> uploadUserData(UserData user, String userId);
  Future<Either<Failure, UserData>> getUserProfile();
  Future<Either<Failure, List<UserData>>> getUserProfileList();
  Future<Either<Failure, Unit>> forgetPassword(String email);
  Future<Either<Failure, UserData>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  );

  Future<void> signOut();
}

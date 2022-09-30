import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_cleaning_service/domain/core/failure.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class FirebaseAuthProvider extends IAuthProvider {
  // @override
  // UserProfile user = UserProfile.empty();
  final FirebaseAuth firebaseAuth;

  FirebaseAuthProvider(
    this.firebaseAuth,
  );

  @override
  Future<Option<UserData>> getSignedInUser() async {
    if (firebaseAuth.currentUser != null) {
      final Either<Failure, UserData> userResponse = await getUserProfile();
      return userResponse.fold((l) => optionOf(null), (r) {
        Logger().i(r);
        return optionOf(r);
      });
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<Failure, Unit>> signUp(
    String emailAddress,
    String password,
    UserData userData,
  ) async {
    Logger().i(emailAddress);
    Logger().i(password);
    // Logger().i(userData.toJson());
    try {
      final UserCredential cred =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      final Either<Failure, Unit> uploadResponse =
          await uploadUserData(userData, cred.user!.uid);

      return uploadResponse;
    } on FirebaseAuthException catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserData>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      final UserCredential credential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      if (credential.user != null) {
        EasyLoading.showSuccess("Successfully logged In");
        Either<Failure, UserData> userResponse = await getUserProfile();
        return userResponse;
      } else {
        EasyLoading.showError("Please recheck Email and Password");
        return left(const Failure("Something went Wrong!"));
      }
    } on PlatformException catch (e) {
      EasyLoading.showError("Please recheck Email and Password");
      Logger().e(e.toString());
      return left(Failure(e.toString()));
    } on FirebaseAuthException catch (e) {
      EasyLoading.showError("Please recheck Email and Password");
      Logger().e(e.toString());
      return left(Failure(e.toString()));
    } catch (e) {
      EasyLoading.showError("Please recheck Email and Password");
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        firebaseAuth.signOut(),
      ]);
  @override
  Future<Either<Failure, Unit>> uploadUserData(
      UserProfile user, String userId) async {
    final CollectionReference users =
        FirebaseFirestore.instance.collection('usersData');

    try {
      await users.doc(userId).set(user.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } on FirebaseAuthException catch (e) {
      Logger().e(e.toString());
      return left(Failure(e.toString()));
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserData>> getUserProfile() async {
    final String userId = firebaseAuth.currentUser!.uid;

    Logger().i(userId);
    final CollectionReference profile =
        FirebaseFirestore.instance.collection('usersData');

    try {
      final DocumentSnapshot<Object?> response =
          await profile.doc(userId).get();

      if (response.exists) {
        Logger().i(response.data().toString());
        final UserData userResponse = UserData.fromJson(
            Map<String, dynamic>.from(response.data()! as Map));
        Logger().i(user);
        user = userResponse;
        return right(user);
      } else {
        return right(user);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  UserData user = const UserData('', '', "", "", "", false, 0, 0, 0);

  @override
  Future<Either<Failure, Unit>> forgetPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<UserData>>> getUserProfileList() async {
    final CollectionReference requests =
        FirebaseFirestore.instance.collection('usersData');
    try {
      final QuerySnapshot<Object?> response =
          await requests.where("isCleaner", isEqualTo: true).get();

      if (response.docs.isNotEmpty) {
        Logger().i(response.docs.first.data().runtimeType);
        final List<UserData> list = List<UserData>.from(response.docs.map((e) =>
            UserData.fromJson(Map<String, dynamic>.from(e.data()! as Map))));
        Logger().i(list.length);
        return right(list);
      } else {
        return right([]);
      }
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUserData(
      UserData user, String userId) async {
    final String userId = firebaseAuth.currentUser!.uid;

    final CollectionReference users =
        FirebaseFirestore.instance.collection('usersData');

    try {
      await users.doc(userId).update(user.toJson()).then((value) {
        Logger().i("updated ");

        return right(unit);
      }).onError((error, stackTrace) {
        Logger().e(error.toString());
        return left(Failure(error.toString()));
      });

      return right(unit);
    } on FirebaseAuthException catch (e) {
      Logger().e(e.toString());
      return left(Failure(e.toString()));
    } catch (e) {
      Logger().e(e.toString());

      return left(Failure(e.toString()));
    }
  }
}

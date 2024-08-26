// lib/features/auth/data/repositories/firebase_user_repository.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/auth/domain/entities/app_user.dart';
import 'package:restaurant/features/auth/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class FirebaseUserRepository implements UserRepository {
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUserRepository();

  @override
  Future<CustomResult<AppUser>> getCurrentUser() async {
    try {
      User? user = auth.currentUser;

      if (user != null) {
        return CustomResult.success(
          AppUser(
              uid: user.uid,
              username: user.displayName,
              isAnonymous: user.isAnonymous),
        );
      } else {
        return CustomResult.failure(const NetworkFailure.unAuthorized(
            message: 'No user is currently signed in.'));
      }
    } catch (e) {
      return CustomResult.failure(NetworkFailure.unAuthorized(
          message: 'Failed to get current user: ${e.toString()}'));
    }
  }

  @override
  Future<CustomResult<AppUser>> signInAnonymously() async {
    try {
      UserCredential userCredential = await auth.signInAnonymously();
      User user = userCredential.user!;

      return CustomResult.success(
        AppUser(
            uid: user.uid,
            username: user.displayName,
            isAnonymous: user.isAnonymous),
      );
    } catch (e) {
      logger.e('Failed to sign in anonymously: ${e.toString()}');
      return CustomResult.failure(NetworkFailure.unAuthorized(
          message: 'Failed to sign in anonymously: ${e.toString()}'));
    }
  }
}

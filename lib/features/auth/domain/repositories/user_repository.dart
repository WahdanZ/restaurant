import 'package:restaurant/base/result/index.dart';
import 'package:restaurant/features/auth/domain/entities/app_user.dart';

abstract class UserRepository {
  Future<CustomResult<AppUser>> getCurrentUser();
  Future<CustomResult<AppUser>> signInAnonymously();
}

import '../../domain/entities/user_entity.dart';

abstract class FirebaseRemoteDataSource{


  Future<void> signIn(email, password) async {}

  Future<void> signUp(userName, email, password) async{}



}
import 'package:group_chat/data/models/userData.dart';
import 'package:group_chat/domain/entities/user_entity.dart';

abstract class AuthRepository{


  Future<void> signIn(email, password) async {}

  Future<void> signUp(String userName, String email,String password) async {}




}
import 'package:group_chat/data/remote_data_source/firebase_remote_data_source.dart';
import 'package:group_chat/domain/entities/user_entity.dart';
import 'package:group_chat/domain/repository/auth_repository.dart';

class FirebaseRepositoryImpl implements AuthRepository{
  final FirebaseRemoteDataSource remoteDataSource;

  FirebaseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> signIn(email, password) async {
       remoteDataSource.signIn(email, password);
  }

  @override
  Future<void> signUp(userName, email, password) async {
     remoteDataSource.signUp(userName, email, password);
  }

}
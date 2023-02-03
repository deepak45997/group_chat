import 'package:group_chat/domain/entities/user_entity.dart';
import 'package:group_chat/domain/repository/auth_repository.dart';

class SignInUseCase{
  AuthRepository authRepository;

  SignInUseCase({required this.authRepository});


  Future<void> signIn(email, password)
  {
    return authRepository.signIn(email, password);
  }


}
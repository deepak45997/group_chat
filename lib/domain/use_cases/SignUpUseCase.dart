import 'package:group_chat/domain/repository/auth_repository.dart';

class SignUpUseCase{

  final AuthRepository authRepository;
  SignUpUseCase({required this.authRepository});

  Future<void> signUp(userName, email, password)async {
    authRepository.signUp(userName, email, password);
  }
}
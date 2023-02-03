import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  String? uId;
  String? userName;
  String? email;
  String? password;

  UserEntity({this.uId, this.userName, this.email, this.password});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();


}


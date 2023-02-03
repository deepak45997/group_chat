import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:group_chat/data/remote_data_source/firebase_remote_data_source.dart';
import 'package:group_chat/domain/entities/user_entity.dart';

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource{

 FirebaseFirestore? firebaseFireStore;
 FirebaseAuth? firebaseAuth;


 FirebaseRemoteDataSourceImpl({this.firebaseFireStore, this.firebaseAuth});




  @override
  Future<void> signIn(email, password) async{
    await firebaseAuth?.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signUp(userName, email, password) async{
     await firebaseAuth?.createUserWithEmailAndPassword(email: email.email!, password: password);
  }

}
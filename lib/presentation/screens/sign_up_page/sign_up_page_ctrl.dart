import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:group_chat/core/routes/app_routes.dart';
import 'package:group_chat/data/models/userData.dart';
import 'package:group_chat/domain/repository/auth_repository.dart';

import '../../../core/values/app_strings.dart';

class SignUpController extends GetxController{
  final AuthRepository? authRepository;
  FirebaseFirestore? firebaseFireStore;
  FirebaseAuth? firebaseAuth;
  final dbRef = FirebaseFirestore.instance;
  var user = FirebaseAuth.instance.currentUser;
  var firebaseAuthInstance = FirebaseAuth.instance;
  FirebaseStorage storage = FirebaseStorage.instance;

  SignUpController({ this.authRepository});
  
  var userNameController=TextEditingController().obs;
  var emailController=TextEditingController().obs;
  var passwordController=TextEditingController().obs;

  Future<void> signUpUser(TextEditingController emailCtrl, TextEditingController passwordCtrl, TextEditingController userNameCtrl) async{
    var name = userNameCtrl.text.trim();
    var email = emailCtrl.text.trim();

    var password = passwordCtrl.text.trim();

      var result=  await signupWithEmail(email, password);


    if(result!=null && result.isNotEmpty && result==AppStrings.success) {
      var profile = UserData(
        userName: name,
        email: email,
        uid: user!.uid,

      );
      await createUserInDb(user!.uid, profile.toJson());

      Get.offAllNamed(AppRoutes.logInPage);
    }
  }



  Future<String?> signupWithEmail(String email, password) async {
    var resp = '';
    try {
      var cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);
      user = cred.user;
      resp = AppStrings.success;
      return resp;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        resp = AppStrings.weakPasswordError;
        return resp;
      } else if (e.code == 'email-already-in-use') {
        resp = AppStrings.accountExistError;
        return resp;
      }
    } catch (e) {
      resp = e.toString();
      return resp;
    }
  }


  Future<String?> createUserInDb(String id, profile) async {
    var resp = '';
    await dbRef
        .collection("users")
        .doc(id)
        .set(profile)
        .then((value) {
      resp = 'SUCCESS';
    }).onError((error, stackTrace) {
      resp = 'FAIL';
    });
    return resp;
  }


  void navigateToLogIn() {
    Get.toNamed(AppRoutes.logInPage);
  }
}
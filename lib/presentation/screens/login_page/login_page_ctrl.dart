import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:group_chat/core/routes/app_routes.dart';

import '../../../core/values/app_strings.dart';

class LoginController extends GetxController{

   var emailController = TextEditingController().obs;
   var passwordController = TextEditingController().obs;
   final dbRef = FirebaseFirestore.instance;
   var user = FirebaseAuth.instance.currentUser;
   var firebaseAuthInstance = FirebaseAuth.instance;
   FirebaseStorage storage = FirebaseStorage.instance;


   logInUser(TextEditingController email, TextEditingController password) async{

    var result = await signInWithEmail(email.text.trim(), password.text.trim());

    if(result!=null && result.isNotEmpty && result==AppStrings.success)
      {
        Get.offAllNamed(AppRoutes.myHomePage);
      }

  }




   Future<String?> signInWithEmail(String email, password) async {
     var resp = '';
     try {
       var cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
           email: email.toLowerCase(), password: password);
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
       resp = e.message ?? "";
       return resp;
     } catch (e) {
       resp = e.toString();
       return resp;
     }
   }


  void navigateToSignUp() {
     Get.toNamed(AppRoutes.signUpPage);
  }
}
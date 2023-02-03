import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class MyHomeController extends GetxController{
  final dbRef = FirebaseFirestore.instance;
  var user = FirebaseAuth.instance.currentUser;
  var firebaseAuthInstance = FirebaseAuth.instance;

 // RxList userList=[].obs;





  // @override
  // Future<void> onInit() async {
  //   super.onInit();
  //
  //   getUserList();
  // }

  // Future<RxList> getUserList()
  // async{
  //     var res= await dbRef.collection("users").get();
  //
  //       for(var element in res.docs)
  //       {
  //              userList.add(UserData.fromJson(element.data()));
  //         }
  //       return userList;
  // }
}
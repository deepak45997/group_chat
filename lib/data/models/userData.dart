// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
     this.uid,
     this.userName,
     this.email,
  });

  String? uid;
  String? userName;
  String? email;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    uid: json["uid"],
    userName: json["userName"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "userName": userName,
    "email": email,
  };
}

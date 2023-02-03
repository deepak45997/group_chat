
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/text_styles.dart';
import 'package:group_chat/presentation/screens/my_home_page/my_home_page_ctrl.dart';
import '../../../core/values/app_strings.dart';

class MyHomePage extends StatelessWidget{
  MyHomePage({Key? key}) : super(key: key);



  final ctrl = Get.put(MyHomeController());

  @override
  Widget build(BuildContext context) {
    return GetX<MyHomeController>(
      builder: (_ctrl)
      {
        return Scaffold(
          body: Text(AppStrings.userList,
            style: TextStyles.boldText(Colors.black, AppDimen.unitHeight*15),),
        );
      },
    );
  }
}


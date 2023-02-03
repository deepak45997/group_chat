import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/core/values/app_colors.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/text_styles.dart';

class HeaderText extends StatelessWidget{
  HeaderText(this.title,{Key? key}) : super(key: key);
  String? title;



  @override
  Widget build(BuildContext context) {
   return  Text(title!,
   textAlign: TextAlign.left,
   style: TextStyles.boldText(AppColor.headerTextColor, AppDimen.unitHeight*20),);

  }
}
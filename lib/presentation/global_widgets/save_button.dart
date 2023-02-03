import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/text_styles.dart';

import '../../core/values/app_colors.dart';

class SaveButton extends StatelessWidget{
  String? title;
  Function? onClick;

   SaveButton( this.title, this.onClick,{super.key});


  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       onClick;
     },
     child: Container(
       height: AppDimen.screenHeight*0.08,
       width: AppDimen.screenWidth,
       decoration:  BoxDecoration(
         color: Colors.green,
         borderRadius: BorderRadius.circular(10)
       ),
       child: Center(
         child: Text(title!,
         style: TextStyles.mediumText(AppColor.whiteColor, AppDimen.unitHeight*15),),
       ),
     ),
   );
  }


}
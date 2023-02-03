import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/text_styles.dart';

import '../../core/values/app_colors.dart';

class KTextField extends StatelessWidget{

  const KTextField({required this.hint, required this.icon, required this.isPassword, required this.ctrl,  this.onChange, required this.inputType, super.key});
  final String hint;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController ctrl;
  final Function? onChange;
  final TextInputType inputType;





  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value)
      {
          if(onChange!=null)
            {
              onChange!(value);
            }
      },
      keyboardType: inputType,
      controller: ctrl,
      obscureText: isPassword,
      decoration: InputDecoration(
        label: Text(hint),
        labelStyle: TextStyles.regularText(AppColor.hintTextColor, AppDimen.unitHeight*15),
        prefixIcon: icon==null ? null : Icon(icon,color: AppColor.textFieldIconColor,),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12.0)
          ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusColor: Colors.red,
        filled: true



      ),

    );
  }



}
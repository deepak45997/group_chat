
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/k_text_field.dart';
import 'package:group_chat/presentation/screens/sign_up_page/sign_up_page_ctrl.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/app_strings.dart';
import '../../global_widgets/headerText.dart';
import '../../global_widgets/text_styles.dart';

class SignUpPage extends StatelessWidget{


  final ctrl= Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return  GetX<SignUpController>(
      builder: (_ctrl)
      {
        return
          Scaffold(
            // body: Center(child: Text( AppStrings.logIn,)),
            body: Padding(
              padding:  EdgeInsets.only(left: AppDimen.screenWidth*0.05, right: AppDimen.screenWidth*0.05, top: AppDimen.screenHeight*0.05, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(AppStrings.signUp),
                  SizedBox(height: AppDimen.screenHeight*0.03,),

                  Divider(thickness: AppDimen.unitHeight*2,),

                  SizedBox(height: AppDimen.screenHeight*0.03,),

                  KTextField(hint: AppStrings.userName, icon: Icons.person, isPassword: false, ctrl: ctrl.userNameController.value, inputType: TextInputType.text),

                  SizedBox(height: AppDimen.screenHeight*0.03,),

                  KTextField(hint: AppStrings.email, icon: Icons.email, isPassword: false, ctrl: ctrl.emailController.value, inputType: TextInputType.text),

                  SizedBox(height: AppDimen.screenHeight*0.03,),

                  KTextField(hint: AppStrings.password, icon: Icons.lock, isPassword: true, ctrl: ctrl.passwordController.value, inputType: TextInputType.visiblePassword),

                  SizedBox(height: AppDimen.screenHeight*0.03,),

                  //SaveButton(AppStrings.signUp, ctrl.signUpUser(ctrl.emailController.value, ctrl.passwordController.value, ctrl.userNameController.value)),

              InkWell(
                onTap: (){
                  ctrl.signUpUser(ctrl.emailController.value, ctrl.passwordController.value, ctrl.userNameController.value);
                },
                child: Container(
                  height: AppDimen.screenHeight*0.08,
                  width: AppDimen.screenWidth,
                  decoration:  BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(AppStrings.signUp,
                      style: TextStyles.mediumText(AppColor.whiteColor, AppDimen.unitHeight*15),),
                  ),
                ),
              ),
                  SizedBox(height: AppDimen.screenHeight*0.03,),
                  Center(
                    child: Align(
                      alignment: Alignment.center,

                      child: Row(
                        children: [
                          Text(AppStrings.haveAccount,style: TextStyles.regularText(Colors.black, AppDimen.unitHeight*10),),
                          InkWell(
                              onTap:  ctrl.navigateToLogIn,
                              child: Text(AppStrings.logIn, style: TextStyles.mediumText(Colors.green, AppDimen.unitHeight*10),)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
      },
    );

  }


}
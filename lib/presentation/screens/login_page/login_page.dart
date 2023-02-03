
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_chat/core/values/app_dimen.dart';
import 'package:group_chat/presentation/global_widgets/k_text_field.dart';
import 'package:group_chat/presentation/screens/login_page/login_page_ctrl.dart';
import 'package:group_chat/presentation/screens/my_home_page/my_home_page_ctrl.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/app_strings.dart';
import '../../global_widgets/headerText.dart';
import '../../global_widgets/text_styles.dart';

class LogInPage extends StatelessWidget{


final ctrl= Get.put(LoginController());

   LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
  return GetX<MyHomeController>(
      builder: (_ctrl){
    return
      Scaffold(
        // body: Center(child: Text( AppStrings.logIn,)),
        body: Padding(
          padding:  EdgeInsets.only(left: AppDimen.screenWidth*0.05, right: AppDimen.screenWidth*0.05, top: AppDimen.screenHeight*0.05, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(AppStrings.logIn),
              SizedBox(height: AppDimen.screenHeight*0.03,),
              Divider(thickness: AppDimen.unitHeight*2,),

              SizedBox(height: AppDimen.screenHeight*0.03,),

              KTextField(hint: AppStrings.email, icon: Icons.email, isPassword: false, ctrl: ctrl.emailController.value, inputType: TextInputType.text),

              SizedBox(height: AppDimen.screenHeight*0.03,),

              KTextField(hint: AppStrings.password, icon: Icons.lock, isPassword: true, ctrl: ctrl.passwordController.value, inputType: TextInputType.visiblePassword),

              SizedBox(height: AppDimen.screenHeight*0.03,),

              //SaveButton(AppStrings.logIn, ctrl.logInUser(ctrl.emailController.value, ctrl.passwordController.value)),
              InkWell(
                onTap: (){
                  ctrl.logInUser(ctrl.emailController.value, ctrl.passwordController.value);
                },
                child: Container(
                  height: AppDimen.screenHeight*0.08,
                  width: AppDimen.screenWidth,
                  decoration:  BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(AppStrings.logIn,
                      style: TextStyles.mediumText(AppColor.whiteColor, AppDimen.unitHeight*15),),
                  ),
                ),
              ),

              SizedBox(height: AppDimen.screenHeight*0.1,),

              Center(
                child: Align(
                  alignment: Alignment.center,

                  child: Row(
                    children: [
                      Text(AppStrings.dontHaveAccount,style: TextStyles.regularText(Colors.black, AppDimen.unitHeight*10),),
                      InkWell(
                          onTap:  ctrl.navigateToSignUp,
                          child: Text(AppStrings.signUp, style: TextStyles.mediumText(Colors.green, AppDimen.unitHeight*10),)),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      );
  });

  }


}
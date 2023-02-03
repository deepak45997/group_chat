import 'package:get/get.dart';
import 'package:group_chat/core/routes/app_routes.dart';
import 'package:group_chat/presentation/screens/login_page/login_page.dart';
import 'package:group_chat/presentation/screens/my_home_page/my_home_page.dart';
import '../../presentation/screens/sign_up_page/sign_up_page.dart';

class AppPages{
  static final pages= [
  GetPage(name: AppRoutes.logInPage, page: () => LogInPage()),
  GetPage(name: AppRoutes.signUpPage, page: () => SignUpPage()),
  GetPage(name: AppRoutes.myHomePage, page: () =>  MyHomePage()),

  ];
}
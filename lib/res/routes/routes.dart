
import 'package:get/get.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/view/home/home_view.dart';
import 'package:getx_practise/view/login/login_view.dart';
import 'package:getx_practise/view/splash_screen.dart';

class AppRoutes{

  static appRoutes() => [

    GetPage(name: RouteName.splashScreen , page: () => SplashScreen(),),
    GetPage(
      name: RouteName.loginView ,
      page: () => LoginView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.homeView ,
      page: () => HomeView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),

  ];
}
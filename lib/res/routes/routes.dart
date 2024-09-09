
import 'package:get/get.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/view/splash_screen.dart';

class AppRoutes{

  static appRoutes() => [

    GetPage(name: RouteName.splashScreen , page: () => SplashScreen(),),
    GetPage(name: RouteName.loginScreen , page: () => SplashScreen(),),
  ];
}
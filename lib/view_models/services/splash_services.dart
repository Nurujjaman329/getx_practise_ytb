
import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/view_models/controller/user_preferences/user_prefernces_view_model.dart';

class SplashServices {


   UserPreference userPreference = UserPreference();

   void isLogin() {

      userPreference.getUser().then((value){
         print(value.token);

         if(value.token!.isEmpty || value.token.toString() == 'null'){

            Timer(
                Duration(seconds: 3),
                    () => Get.toNamed(RouteName.loginView)
            );
         } else {
            Timer(
                Duration(seconds: 3),
                    () => Get.toNamed(RouteName.homeView)
            );
         }
      });


   }
}

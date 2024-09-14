import 'dart:async';
import 'package:get/get.dart';

import '../../res/routes/routes_name.dart';
import '../controller/user_preferences/user_prefernces_view_model.dart';


class SplashServices {

   UserPreference userPreference = UserPreference();  // Assuming you have user preference storage

   void isLogin() {
      userPreference.getUser().then((value) {
         print(value.token);  // Debugging token value

         // Navigate after 3 seconds based on token validity
         Timer(
            const Duration(seconds: 3),
                () {
               if (value.token == null || value.token!.isEmpty) {
                  Get.offNamed(RouteName.loginView);  // Navigate to Login Screen
               } else {
                  Get.offNamed(RouteName.homeView);  // Navigate to Home Screen
               }
            },
         );
      }).catchError((error) {
         // Handle errors like no internet or storage issues
         print("Error fetching user data: $error");
      });
   }
}

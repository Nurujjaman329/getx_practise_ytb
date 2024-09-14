
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_practise/models/login/login_response_model.dart';
import 'package:getx_practise/repository/login_repository/login_repository.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/utils/utils.dart';
import 'package:getx_practise/view_models/controller/user_preferences/user_prefernces_view_model.dart';


class LoginViewModel extends GetxController{

  final _api = LoginRepository();

  UserPreference userPrefernce = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

   RxBool loading = false.obs;

  
  void loginApi() {
   loading.value  = true;
    Map data = {
      'email' : emailController.value.text,
      'password': passwordController.value.text,
    };

    _api.loginApi(data).then((value)
    {

      loading.value  = false;
      if(value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);

      } else {
        
        userPrefernce.saveUser(LoginResponseModel.fromJson(value)).then((value){
         Get.toNamed(RouteName.homeView);
        }).onError((error , stackTrace){

        });
        Utils.snackBar('Login', 'Login Successfully');
      }

    }
    ).onError((error ,stackTrace){
      loading.value  = false;
      Utils.snackBar('Error', error.toString());
    });
  }
  
}
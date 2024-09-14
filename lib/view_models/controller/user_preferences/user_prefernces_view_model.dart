import 'package:getx_practise/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {

Future<bool> saveUser(LoginResponseModel responsModel) async {

  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString('token', responsModel.token.toString());
  return true;
}

Future<LoginResponseModel> getUser() async {

  SharedPreferences sp = await SharedPreferences.getInstance();
  String? token = sp.getString('token');
  return LoginResponseModel(
      token: token,
  );
}

Future<bool> removeUser() async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.clear();

  return true;
}


}
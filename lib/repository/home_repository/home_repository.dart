


import 'package:getx_practise/data/network/network_api_services.dart';
import 'package:getx_practise/models/home/user_list_model.dart';
import 'package:getx_practise/res/app_url/app_url.dart';

class HomeRepository {

   final _apiService = NetworkApiServices();

  Future<UserListModel>  userListApi(var data) async {
    dynamic reponse = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(reponse);
  }
}
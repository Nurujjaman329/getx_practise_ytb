
import 'package:flutter/material.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/view_models/controller/user_preferences/user_prefernces_view_model.dart';
import 'package:get/get.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                userPreference.removeUser().then((value){
                  Get.toNamed(RouteName.loginView);
                });
              },
              icon: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}

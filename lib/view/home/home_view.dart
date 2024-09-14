import 'package:flutter/material.dart';
import 'package:getx_practise/data/response/status.dart';
import 'package:getx_practise/res/routes/routes_name.dart';
import 'package:getx_practise/view_models/controller/home/home_view_models.dart';
import 'package:getx_practise/view_models/controller/user_preferences/user_prefernces_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    super.initState();
    homeController.userListApi();  // Fetch user list on initialization
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              userPreference.removeUser().then((value) {
                Get.toNamed(RouteName.loginView);  // Navigate to login on logout
              });
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(
              child: CircularProgressIndicator(),  // Show loading spinner
            );
          case Status.ERROR:
            return Center(
              child: Text(
                'Something Went Wrong: ${homeController.errorMessage.value}',  // Show error message
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            );
          case Status.COMPLETED:
            if (homeController.userList.value.data == null || homeController.userList.value.data!.isEmpty) {
              return Center(
                child: Text(
                  'No users found.',
                  style: TextStyle(fontSize: 18),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  var user = homeController.userList.value.data![index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar.toString()),
                    ),
                    title: Text(user.firstName ?? 'No Name'),
                    subtitle: Text(user.email ?? 'No Email'),
                  );
                },
              );
            }
        }
      }),
    );
  }
}

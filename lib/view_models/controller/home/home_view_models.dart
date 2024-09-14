import 'package:get/get.dart';
import 'package:getx_practise/data/response/status.dart';
import 'package:getx_practise/repository/home_repository/home_repository.dart';
import '../../../models/home/user_list_model.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs; // Observable for tracking API status
  final userList = UserListModel().obs; // Observable for user list
  final errorMessage = ''.obs; // Observable to store error messages

  // Setters to update status, user list, and error message
  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setUserList(UserListModel value) => userList.value = value;
  void setErrorMessage(String value) => errorMessage.value = value;

  // Function to call user list API
  void userListApi() {
    setRxRequestStatus(Status.LOADING); // Set status to loading before the call

    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED); // Set status to completed when successful
      setUserList(value); // Set user list data
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.ERROR); // Set status to error when there's an error
      setErrorMessage(error.toString()); // Capture and log the error message
      print("Error occurred: $error"); // Log the error for debugging
    });
  }
}

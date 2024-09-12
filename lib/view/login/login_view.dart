import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/utils/utils.dart';
import 'package:getx_practise/view_models/controller/login_view_model.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {


 final  loginVM =  Get.put(LoginViewModel());
 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Login',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: loginVM.emailController.value,
                focusNode: loginVM.emailFocusNode.value,
                decoration: InputDecoration(
                  hintText: 'email_hint'.tr,
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  Utils.snackBar('Email', 'Enter Email');
                },
                onFieldSubmitted: (value){
                  Utils.fieldFocusChange(context,
                      loginVM.emailFocusNode.value,
                      loginVM.passwordFocusNode.value);
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: loginVM.passwordController.value,
                focusNode: loginVM.passwordFocusNode.value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  Utils.snackBar('PassWord', 'Enter PassWord');
                },
                onFieldSubmitted: (value){
                  Utils.fieldFocusChange(context,
                      loginVM.passwordFocusNode.value,
                      loginVM.passwordFocusNode.value);
                },
                obscureText: true,
                obscuringCharacter: '*',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                if(_formKey.currentState!.validate()){}
                },

                child: Text('Login',style: TextStyle(color: Colors.white),)
            ),
          ],
        ),
      ),
    );
  }
}

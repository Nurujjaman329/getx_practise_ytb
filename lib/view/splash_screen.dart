import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/res/assets/image_assets.dart';
import 'package:getx_practise/res/components/internet_exceptions_widget.dart';
import 'package:getx_practise/utils/utils.dart';
import 'package:getx_practise/view_models/services/splash_services.dart';

import '../res/components/round_button.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text('email_hint'.tr),

      ),


    );
  }
}

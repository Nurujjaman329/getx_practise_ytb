import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/res/assets/image_assets.dart';
import 'package:getx_practise/res/components/internet_exceptions_widget.dart';
import 'package:getx_practise/utils/utils.dart';

import '../res/components/round_button.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text('email_hint'.tr),

      ),
      body: Column(
        children: [
          RoundButton(onPress: (){},
            title: 'Login',
           width: double.infinity, loading: true,
          ),
          SizedBox(height: 10.0,),
          RoundButton(onPress: (){},
            title: 'Login',
            width: double.infinity, loading: false,
          ),
        ],
      ),

    );
  }
}

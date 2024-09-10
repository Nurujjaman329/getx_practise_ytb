import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/res/assets/image_assets.dart';
import 'package:getx_practise/utils/utils.dart';


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
      body: Image(image: AssetImage(ImageAssets.splashScreen)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Utils.toastMessageCenter('Center');
        Utils.toastMessage('Bottom');
      }),
    );
  }
}

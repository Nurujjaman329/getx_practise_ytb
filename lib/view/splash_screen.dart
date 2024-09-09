import 'package:flutter/material.dart';
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
      floatingActionButton: FloatingActionButton(onPressed: (){
        Utils.toastMessageCenter('Center');
        Utils.toastMessage('Bottom');
      }),
    );
  }
}

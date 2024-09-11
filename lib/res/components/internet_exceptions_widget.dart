import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:getx_practise/res/colors/app_color.dart';
class InternetExceptionsWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionsWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionsWidget> createState() => _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15,),
          Icon(Icons.cloud_off,color: Colors.red,),
          Padding(
            padding:  EdgeInsets.only(top: 30),
            child: Text('internet_exception'.tr,textAlign: TextAlign.center,),
          ),
          SizedBox(height: height * .15,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: Text('Retry',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}



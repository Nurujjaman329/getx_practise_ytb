import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final double height , width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  const RoundButton(
      {super.key,
        this.buttonColor = AppColor.blackColor,
        this.textColor = Colors.blue,
        required this.title,
        required this.onPress,
        this.width = 60,
        this.height = 50,
        this.loading = false,

      });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50.0),

      ),
      child: loading ? Center(
        child: CircularProgressIndicator()) : Center(
        child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
      ),
      );
    
  }
}

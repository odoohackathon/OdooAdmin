import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

   Widget AddverticalSpace(double height)
   {
      return SizedBox(height: height);
   }

   Widget AddhorizontalSpace(double width)
   {
     return SizedBox(width: width);
   }

void showSnackBar({required String message ,required BuildContext context}){
   Flushbar(
      animationDuration: const Duration(milliseconds: 400),
      forwardAnimationCurve: Curves.easeIn,
      reverseAnimationCurve: Curves.easeOut,
      duration: const Duration(seconds: 2),
      borderRadius: BorderRadius.circular(10.w),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      isDismissible: true,
      flushbarPosition: FlushbarPosition.BOTTOM,
      flushbarStyle: FlushbarStyle.FLOATING,
      message: message,
      margin: EdgeInsets.all(20.w),
   ).show(context);
}

PreferredSizeWidget CustomAppbar({required String text,List<Widget>? icon})
 {
     return AppBar(
        title: Text(text,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        actions: icon,
     );
 }
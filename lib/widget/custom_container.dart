import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {

  String text;
  double height;
  double width;
  Color color,textcolor;
  GestureTapCallback onTap;


  CustomContainer(this.text, this.height, this.width,this.color,this.textcolor,this.onTap);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Center(
        child: Card(
          elevation: 2,
          child: Container(
            height:height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:color,
            ),
            child: Center(child: Text(text,style: TextStyle(color:textcolor,fontSize: 22.sp),)),
          ),
        ),
      ),
    );
  }
}

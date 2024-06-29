import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  Color? backgroundColor;
  double? height;
  double? width;
  double? fontSize;
  BorderRadiusGeometry? borderRadius;
  Color? fontColor;
  bool? isLoad;

  PrimaryButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.height,
    this.width,
    this.fontSize,
    this.borderRadius,
    this.fontColor,
    this.isLoad = false
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(15))),
          onPressed: onPressed,
          child: isLoad!?Center(child: CircularProgressIndicator(color: Colors.white,)):Text(
            text,
            style: TextStyle(
                fontSize: fontSize ?? 20,
                fontWeight: FontWeight.w600,
                color: fontColor ?? Colors.white
            ),
          )),
    );
  }
}

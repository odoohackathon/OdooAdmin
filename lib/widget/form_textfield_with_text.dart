import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FormTextFieldWithTitle extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  EdgeInsetsGeometry? padding;
  FormFieldValidator<String>? validator;
  TextInputType? keyboardType;
  bool? readOnly;
  ValueChanged<String>? onChanged;
  double? suffixIconWidth;
  double? prefixIconWidth;
  double? suffixIconHeight;
  double? prefixIconHeight;

  FormTextFieldWithTitle({
    required this.title,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText=false,
    this.padding,
    this.validator,
    this.keyboardType,
    this.readOnly,
    this.onChanged,
    this.suffixIconWidth=30,
    this.prefixIconWidth=30,
    this.suffixIconHeight=30,
    this.prefixIconHeight=30
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          TextFormField(
            readOnly: readOnly ?? false,
            keyboardType: keyboardType ?? TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obscureText!,
            controller: controller,
            cursorHeight: 20.h,
            validator: validator,
            onChanged: onChanged,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400, width: 2)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              isCollapsed: true,
              contentPadding: EdgeInsets.only(top: 5.h,bottom: 4.h),
              hintText: hintText,
              suffixIconConstraints: BoxConstraints.tight(Size(suffixIconWidth!, suffixIconHeight!)),
              prefixIconConstraints: BoxConstraints.tight(Size(prefixIconWidth!, prefixIconHeight!)),
            ),
          )
        ],
      ),
    );
  }
}

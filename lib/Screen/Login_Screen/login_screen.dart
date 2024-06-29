import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:odooadmin/Data/networkapi.dart';
import 'package:odooadmin/Data/url.dart';
import 'package:http/http.dart' as http;
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/pref/user_pref.dart';
import 'package:odooadmin/view_model/login_controller.dart';

import '../../res/Routes/routes_name.dart';


class LoginScreen extends StatelessWidget {

  static var formKey = GlobalKey<FormState>();

  LoginController controller = Get.put(LoginController());

  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Here !",style: TextStyle(fontSize: 35.sp,fontWeight: FontWeight.w500,color: Colors.black),),
              AddverticalSpace(40.h),
              TextFormField(
                style: TextStyle(color: Colors.black),
                controller: controller.name.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter name";
                  } else {
                    return null;
                  }
                },
              ),
              AddverticalSpace(10.h),
              TextFormField(
                controller:  controller.pass.value,
                style: TextStyle(color: Colors.black),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: "Enter Pass",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                   }
                  //else if (!RegExp(
                  //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                  //     .hasMatch(value)) {
                  //   return "Please enter valid format password";
                  // }
                  else {
                    return null;
                  }
                },
              ),
              AddverticalSpace(15.h), Container(
                  height: 45.h,
                  width: 200.w,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),onPressed: () async {
                    if(formKey.currentState!.validate())
                    {
                      print(controller.name.value.text);


                      controller.loginApi(context);

                    }
                    else {
                      showSnackBar(message: "Please fill all fields", context: context);
                    }
                  }, child: Obx(() => controller.isLogin.value== true ? CircularProgressIndicator() :Text("Sign In",style: TextStyle(color: Colors.white),))),)
            ],
          ),
        ),
      ),
    );
  }
}

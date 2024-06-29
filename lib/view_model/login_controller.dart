import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:odooadmin/Data/networkapi.dart';
import 'package:odooadmin/Data/url.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../pref/user_pref.dart';
import '../res/Routes/routes_name.dart';

class LoginController extends GetxController
{
      RxBool isLogin = false.obs;
      NetworkApiServices apiServices = NetworkApiServices();
      final name = TextEditingController().obs;
      final pass = TextEditingController().obs;


      Future<void> loginApi(BuildContext contex) async {
            print("${name.value.text}-----------------");
            apiServices.postApi(Url.loginurl,jsonEncode(<String,String>{
               "username":name.value.text,
               "password":pass.value.text,
            })).then((value) async {
                if(value['result']==true)
                  {
                    showSnackBar(message: value['message'], context: contex);
                    SharedPreferences preferences = await SharedPreferences.getInstance();
                    preferences.setString("token", value['token']);
                    UserPreferences.setUser();
                    Get.offAllNamed(RoutesName.homeScreen);
                  }
                  else
                    {
                      showSnackBar(message: value['message'], context: contex);
                    }
            },);



      }
}
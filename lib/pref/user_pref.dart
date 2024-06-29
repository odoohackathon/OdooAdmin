import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences
{

  static Future<void> setUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("isLogin", true);
  }

  static Future<bool> getUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isLogin = preferences.getBool("isLogin") ?? false;
    return isLogin;
  }

  static Future<void> removeUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("isLogin");
  }

  // static Future<void> setOnBoardingFalse() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setBool("isJustInstalled", true);
  // }

  // static Future<void> setUserDeviceToken({required String deviceToken}) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setString(Strings.deviceTokenKey, deviceToken);
  // }

}
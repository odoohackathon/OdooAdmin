import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:odooadmin/pref/user_pref.dart';
import 'package:odooadmin/res/Routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5),() => Auth(),);
  }
  void Auth(){
    UserPreferences.getUser().then((value) {
      if(value) {
          Get.offAllNamed(RoutesName.homeScreen);
        }
      else {
        Get.offAllNamed(RoutesName.loginScreen);
        }
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hi Admin!",
          style: TextStyle(color: Colors.black, fontSize: 25.sp),
        ),
      ),
    );
  }
}

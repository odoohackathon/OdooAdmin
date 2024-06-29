import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/pref/user_pref.dart';
import 'package:odooadmin/res/Routes/routes_name.dart';
import 'package:odooadmin/view_model/home_controller.dart';
import 'package:odooadmin/widget/custom_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeController controller = Get.put(HomeController());

  Future<void> data()
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String data = preferences.getString("token")??"";
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: "Admin HomePage",
        icon: [
          InkWell(
            onTap: () {
              UserPreferences.removeUser();
              Get.offNamed(RoutesName.loginScreen);
            },
            child: Icon(
              Icons.logout,
              color: Colors.white,
              size: 25.sp,
            ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            AddverticalSpace(30.h),
            CustomContainer(
              "User",
              160.h,
              200.w,
              Colors.white,
              Colors.black,
                  () async {
                Get.toNamed(RoutesName.userDetailsScreen);
              },
            ),
            AddverticalSpace(15.h),
            CustomContainer(
              "Crime",
              160.h,
              200.w,
              Colors.white,
              Colors.black,
                  () {
                Get.toNamed(RoutesName.crimeDetailsScreen);
              },
            ),
            AddverticalSpace(15.h),
            CustomContainer(
              "Police",
              160.h,
              200.w,
              Colors.white,
              Colors.black,
                  () {
                Get.toNamed(RoutesName.policeDetailsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

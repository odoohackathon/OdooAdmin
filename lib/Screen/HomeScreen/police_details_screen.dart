import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/res/Routes/routes_name.dart';
import 'package:odooadmin/widget/custom_container.dart';

import '../../widget/custom_row_with_title_description.dart';

class PoliceDetailsScreen extends StatefulWidget {
  const PoliceDetailsScreen({super.key});

  @override
  State<PoliceDetailsScreen> createState() => _PoliceDetailsScreenState();
}

class _PoliceDetailsScreenState extends State<PoliceDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: Container(
        width: 100.w,
        child: FloatingActionButton(onPressed: () {
                Get.toNamed(RoutesName.policeVerificationScreen);
        },child: Text("Pending"),),
      ),

      body: Column(
        children: [
          AddverticalSpace(35.h),
          Text(
            "Ragistered Police Details",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 22.sp),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          children: [
                            AddverticalSpace(15.h),
                            CustomRow("Name : ", "Satish Parmar",13.sp,15.sp),
                            AddverticalSpace(5.h),
                            CustomRow("Email : ", "Satish@123gmail.com",13.sp,15.sp),
                            AddverticalSpace(5.h),
                            CustomRow("Phone Number : ", "8469965726121",13.sp,15.sp),
                            AddverticalSpace(5.h),
                            Container(
                              height: 30.h,
                              width: 180.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green
                              ),
                              child: Center(child: Text("SuccessFully Verified",style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

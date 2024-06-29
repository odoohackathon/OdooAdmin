import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/utils.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_row_with_title_description.dart';

class PoliceVerificationScreen extends StatefulWidget {
  const PoliceVerificationScreen({super.key});

  @override
  State<PoliceVerificationScreen> createState() => _PoliceVerificationScreenState();
}

class _PoliceVerificationScreenState extends State<PoliceVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AddverticalSpace(25.h),
          Center(
            child: Text(
              "Verify Police",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Card(
                    elevation: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                        child: Column(
                          children: [
                            AddverticalSpace(15.h),
                            CustomRow("Name : ", "Satish Parmar", 13.sp, 15.sp),
                            AddverticalSpace(5.h),
                            CustomRow(
                                "Email : ", "Satish@123gmail.com", 13.sp, 15.sp),
                            AddverticalSpace(5.h),
                            CustomRow(
                                "Phone Number : ", "8469965726121", 13.sp, 15.sp),
                            AddverticalSpace(5.h),
                            Row(
                              children: [
                                Expanded(
                                    child: CustomContainer("Cancel", 40.h, 120.0, Colors.red, Colors.white, () {

                                    },)
                                ),
                                Expanded(
                                    child: CustomContainer("Verify", 40.h, 120.0, Colors.green, Colors.white, () {

                                    },)
                                ),

                              ],
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

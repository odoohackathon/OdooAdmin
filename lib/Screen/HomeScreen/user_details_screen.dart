import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/widget/custom_row_with_title_description.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddverticalSpace(35.h),
          Text(
            "Ragistered User Details",
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
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: double.infinity,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          AddverticalSpace(15.h),
                          CustomRow("Name : ", "Satish Parmar",13.sp,15.sp),
                          AddverticalSpace(5.h),
                          CustomRow("Email : ", "Satish@123gmail.com",13.sp,15.sp),
                          AddverticalSpace(5.h),
                          CustomRow("Phone Number : ", "8469965726121",13.sp,15.sp),

                        ],
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

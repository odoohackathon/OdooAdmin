import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/widget/custom_row_with_title_description.dart';

class CrimeDetailsScreen extends StatefulWidget {
  const CrimeDetailsScreen({super.key});

  @override
  State<CrimeDetailsScreen> createState() => _CrimeDetailsScreenState();
}

class _CrimeDetailsScreenState extends State<CrimeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddverticalSpace(35.h),
          Text(
            "Crime Details",
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
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Card(
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                child: Container(
                                  color: Colors.grey,
                                  height: 150.h,
                                  width: 120.w,
                                ),
                              ),
                              AddhorizontalSpace(10.sp),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                                  child: Column(
                                    children: [
                                      CustomRow("User Name : ", "Satish Parmar", 13.sp, 14.sp),
                                      AddverticalSpace(15.h),
                                      CustomRow("Date : ", "17-05-2024", 13.sp, 14.sp),
                                      AddverticalSpace(15.h),
                                      CustomRow("Time : ", "4:05pm", 13.sp, 14.sp),
                                      AddverticalSpace(15.h),
                                      Container(
                                        height: 40,
                                        width: 130.w,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(child: Text("Video Url",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

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
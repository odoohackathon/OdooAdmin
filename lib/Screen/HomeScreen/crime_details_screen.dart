import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:odooadmin/Screen/HomeScreen/video_playing.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:odooadmin/res/Routes/routes_name.dart';
import 'package:odooadmin/view_model/home_controller.dart';
import 'package:odooadmin/widget/custom_row_with_title_description.dart';
import 'package:video_player/video_player.dart';


class CrimeDetailsScreen extends StatefulWidget {
  const CrimeDetailsScreen({super.key});

  @override
  State<CrimeDetailsScreen> createState() => _CrimeDetailsScreenState();
}

class _CrimeDetailsScreenState extends State<CrimeDetailsScreen> {


  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AddverticalSpace(35.h),
          Center(
            child: Text(
              "Crime Details",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp),
            ),
          ),
          FutureBuilder(future: controller.getAllCrime(context) , builder: (context, snapshot) {
            if(snapshot.hasData)
              {
                if(snapshot.data!['data'].isEmpty)
                  {
                    return    Center(child: Text("No Data",style: TextStyle(color: Colors.black),));
                  }
                else
                  {
                     return Flexible(
                       child: ListView.builder(
                         itemCount: snapshot.data!['data'].length ,
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
                                                 CustomRow("User Name : ", snapshot.data!['data'][index]['user']['name'], 13.sp, 14.sp),
                                                 AddverticalSpace(15.h),
                                                 CustomRow("Date : ", snapshot.data!['data'][index]['crimeDate'], 13.sp, 14.sp),
                                                 AddverticalSpace(15.h),
                                                 CustomRow("Time : ", snapshot.data!['data'][index]['crimeTime'], 13.sp, 14.sp),
                                                 AddverticalSpace(15.h),
                                                 Container(
                                                   height: 40,
                                                   width: 130.w,
                                                   decoration: BoxDecoration(
                                                     color: Colors.indigo,
                                                     borderRadius: BorderRadius.circular(10),
                                                   ),
                                                   child: InkWell(
                                                       onTap: () {
                                                        Get.toNamed(RoutesName.videoScreen);
                                                       },
                                                       child: Center(child: Text("Video Url",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),))),
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
                     );
                  }

              }
            else
              {
                  return CircularProgressIndicator();
              }
          },),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {

  String title;
  String description;
  double tfontsize,dfontsize;



  CustomRow(this.title, this.description,this.tfontsize,this.dfontsize);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
         Text(title,style: TextStyle(fontSize: tfontsize,color: Colors.grey),),
          Expanded(child: Text(description,style: TextStyle(fontSize: dfontsize,color: Colors.black),maxLines: 1,))
        ],
      );
  }
}

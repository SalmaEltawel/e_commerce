import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key,required this.text,required this.controller});
   String text;
   TextEditingController controller;


   @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.r),
      child: TextFormField(
        controller: controller,
        style:  TextStyle(height: 2.h),
        decoration: InputDecoration(
            filled: true,
            hintText: text,
            focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(25.r)),

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r))),

      ),
    );
  }
}

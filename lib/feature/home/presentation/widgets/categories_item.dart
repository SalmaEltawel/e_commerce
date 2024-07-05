import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/brands_model.dart';

class CategoriesItem extends StatelessWidget {
   CategoriesItem(this.data,{super.key, });
   List<Data>data;


   @override
  Widget build(BuildContext context) {
    return Container(
      height: 288.h,
      margin: EdgeInsets.only(left: 16.w),
      child: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.horizontal,
          itemCount:data.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data[i].image??""),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  data[i].name??"",
                  style: TextStyle(
                    color: AppColors.blueColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            );
          }),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/feature/home/presentation/widgets/brands_item.dart';
import 'package:e_commerce_app/feature/home/presentation/widgets/categories_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/brands_model.dart';
import '../../bloc/home_bloc.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  List<String> imageUrls = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                        height: 200.h,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: imageUrls.map((imageUrl) {
                        return SizedBox(
                          height: 20,
                          width: double.infinity,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(imageUrl, fit: BoxFit.cover,)),
                        );
                      }).toList()),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",
                        style: TextStyle(
                            color: AppColors.blueColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp)),
                    TextButton(
                        onPressed: () {},
                        child: Text("view all",
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp)))
                  ],
                ),
              ),
               state.categoriesModel!= null?
                  CategoriesItem(state.categoriesModel?.data??[]):
                   const Center(child: CircularProgressIndicator()),
              const SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(left: 16.0.w),
                child: Text("Brands",
                    style: TextStyle(
                        color: AppColors.blueColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp)),
              ),
              state.brandsModel!= null?
              BrandsItem(state.brandsModel?.data??[]):
              const Center(child: CircularProgressIndicator()),



          
            ],
          ),
        );
      },
    );
  }

}

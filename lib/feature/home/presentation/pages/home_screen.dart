import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/feature/home/data/data_sources/home_ds_impl.dart';
import 'package:e_commerce_app/feature/home/data/repositories/home_repo_impl.dart';
import 'package:e_commerce_app/feature/home/domain/use_cases/get_brands_usecase.dart';
import 'package:e_commerce_app/feature/home/domain/use_cases/get_categories_usecase.dart';
import 'package:e_commerce_app/feature/home/domain/use_cases/get_product_usecase.dart';
import 'package:e_commerce_app/feature/home/presentation/pages/tabs/account_tab.dart';
import 'package:e_commerce_app/feature/home/presentation/pages/tabs/category_tab.dart';
import 'package:e_commerce_app/feature/home/presentation/pages/tabs/home_tab.dart';
import 'package:e_commerce_app/feature/home/presentation/pages/tabs/wishlist_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
          getCategoriesUseCase: GetCategoriesUseCase(
            HomeRepoImpl(
              HomeDsImpl(
                ApiManager(),
              ),
            ),
          ),
          getBrandsUseCase: GetBrandsUseCase(
            HomeRepoImpl(
              HomeDsImpl(
                ApiManager(),
              ),
            ),
          ),
          getProductUseCase:
              GetProductUseCase(HomeRepoImpl(HomeDsImpl(ApiManager()))))
        ..add(GetCategoriesEvent())
        ..add(GetBrandsEvent())
      ..add(GetProductEvent()),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            leadingWidth: 83.w,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assets/images/Group 5.svg"),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.primaryColor,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.whiteColor,
            selectedItemColor: AppColors.whiteColor,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/home.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Frame 2.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/love.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Vector 4.png")),
                  label: ""),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(height: 1.h),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 1.w, color: AppColors.primaryColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.primaryColor)),
                            hintText: "what do you search for?",
                            hintStyle: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w300),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 30,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 25,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Expanded(child: tabs[index])
            ],
          )

          // tabs[index],
          ),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    CategoryTab(),
    WishlistTab(),
    AccountTab(),
  ];
}

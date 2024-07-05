import 'package:e_commerce_app/core/enum/enum.dart';
import 'package:e_commerce_app/feature/sign_up/data/data_sources/remote_signup_ds_impl.dart';
import 'package:e_commerce_app/feature/sign_up/data/repositories/signup_repo_impl.dart';
import 'package:e_commerce_app/feature/sign_up/domain/entities/SignUpRequest.dart';
import 'package:e_commerce_app/feature/sign_up/domain/use_cases/signup_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../login/presentation/widget/custom_text_form_field.dart';
import '../bloc/signup_bloc.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(
        SignupUseCase(
          SignUpRepoImpl(
            RemoteSignupDsImpl(),
          ),
        ),
      ),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
              ),
            );
          }
          if (state.status == RequestStatus.success) {
            Navigator.pushNamed(context, RoutesName.home);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primaryColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  text: 'Enter your name',
                  controller: nameController,
                ),
                CustomTextFormField(
                  text: 'Enter your email',
                  controller: emailController,
                ),
                CustomTextFormField(
                  text: 'Enter your password',
                  controller: passwordController,
                ),
                // Padding(
                //   padding:
                //   EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 10.w),
                //   child: Text("rePassword",
                //       style: TextStyle(
                //           color: AppColors.whiteColor,
                //           fontSize: 18.sp,
                //           fontWeight: FontWeight.w500)),
                // ),
                // CustomTextFormField(
                //   text: 'Enter your repassword',
                //   controller: rePasswordController,
                // ),

                CustomTextFormField(
                  text: 'Enter your Phone',
                  controller: phoneController,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0.w, vertical: 10.h),
                      child: TextButton(
                        onPressed: () {
                          SignUpRequest request = SignUpRequest(

                                name: " SalmaKjjamel",
                                email:"SalmaKajjmel@gmail.com",
                                password:"salma@1123",
                                rePassword:"salma@1123",
                                phone:"01010700700"
                              );
                          BlocProvider.of<SignupBloc>(context)
                              .add(SignupButtonEvent(request: request));
                        },
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 20.w)),
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.whiteColor)),
                        child: Text("Signup",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp)),
                      ),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.signIn);
                        },
                        child: Text(
                          'I have an account',
                          style: TextStyle(color: AppColors.whiteColor),
                        )),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

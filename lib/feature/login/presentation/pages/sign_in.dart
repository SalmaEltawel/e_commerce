import 'package:e_commerce_app/config/routes/routes.dart';
import 'package:e_commerce_app/core/enum/enum.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/data_source/remote/remote_login_ds_impl.dart';
import '../../data/repository/login_repo_impl.dart';
import '../../domain/use_case/login_usecase.dart';
import '../bloc/login_bloc.dart';
import '../widget/custom_text_form_field.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(
            LoginUseCase(
              LoginRepoImpl(
                RemoteLoginDsImpl(),
              ),
            ),
          ),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == RequestStatus.loading) {
            showDialog(context: context,
              builder: (context) =>
                  const AlertDialog(
                      title: Center(child: CircularProgressIndicator())),);
          }
          if(state.status==RequestStatus.success){
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
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 5.0.h, horizontal: 10.w),
                  child: Text("Email_address",
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                ),
                CustomTextFormField(
                  text: 'Enter your email',
                  controller: emailController,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 5.h, horizontal: 10.w),
                  child: Text("Password",
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                ),
                CustomTextFormField(
                  text: 'Enter your password',
                  controller: passwordController,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(
                              horizontal: 8.0.w, vertical: 10.h),
                          child: TextButton(
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context).add(
                                  LoginButtonEvent(
                                      email: "ahmedmutti@gmail.com",
                                      password: "Ahmed@123"));
                            },
                            style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(horizontal: 20.w)),
                                backgroundColor:
                                MaterialStatePropertyAll(AppColors.whiteColor)),
                            child: Text("Login",
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
                          Navigator.pushNamed(context, RoutesName.signup);
                        },
                        child: Text(
                          'Don’t have an account? Create Account',
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

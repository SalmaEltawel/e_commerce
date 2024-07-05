import 'package:flutter/material.dart';
import '../../feature/home/presentation/pages/home_screen.dart';
import '../../feature/login/presentation/pages/sign_in.dart';
import '../../feature/sign_up/presentation/pages/sign_up.dart';


class RoutesName {
  static const String signIn = "/";
  static const String signup = "signUp";
  static const String home = "home";

}

class RoutesApp {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.signIn:
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => noRoutes(),
        );
    }
  }

  static Widget noRoutes() {
    return const Scaffold(
      body: Center(child: Text("No Routes")),
    );
  }
}

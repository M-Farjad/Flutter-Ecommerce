import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/login_screen/login_success_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//we use name route
//all our route will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccesScreen.routeName: (context) => const LoginSuccesScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfile.routeName: (context) => const CompleteProfile(),
};

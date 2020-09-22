import 'package:ecommerce_app_flutter/screens/forgotPassword/forgot_password_screen.dart';
import 'package:ecommerce_app_flutter/screens/home/home_screen.dart';
import 'package:ecommerce_app_flutter/screens/login/login_screen.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/product_detail_screen.dart';
import 'package:ecommerce_app_flutter/screens/signUp/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
};

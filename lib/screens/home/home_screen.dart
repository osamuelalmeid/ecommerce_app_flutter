import 'package:ecommerce_app_flutter/components/navigation_bar.dart';
import 'package:ecommerce_app_flutter/screens/home/components/body.dart';
import 'package:ecommerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

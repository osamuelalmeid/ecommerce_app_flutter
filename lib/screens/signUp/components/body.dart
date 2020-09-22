import 'package:ecommerce_app_flutter/components/custom_suffix_icon.dart';
import 'package:ecommerce_app_flutter/components/default_buttom.dart';
import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/helpers/validators.dart';
import 'package:ecommerce_app_flutter/models/user_app.dart';
import 'package:ecommerce_app_flutter/screens/home/home_screen.dart';
import 'package:ecommerce_app_flutter/screens/login/components/social_card.dart';
import 'package:ecommerce_app_flutter/screens/signUp/components/sign_up_form.dart';
import 'package:ecommerce_app_flutter/viewmodels/user_app_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Registrar nova conta",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Complete suas informações ou cadastre-se\ncom as redes sociais",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SignUpForm(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
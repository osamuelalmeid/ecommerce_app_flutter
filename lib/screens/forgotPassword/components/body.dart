import 'package:ecommerce_app_flutter/components/new_acount_text.dart';
import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/screens/forgotPassword/components/forgot_password_form.dart';
import 'package:ecommerce_app_flutter/screens/signUp/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Por favor insira seu email, nós vamos\nenviar um link para retornar a sua conta",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 80,
                ),
                ForgotPasswordForm(),
                SizedBox(
                  height: 30,
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                NewAcountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
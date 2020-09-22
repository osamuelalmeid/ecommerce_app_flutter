import 'package:ecommerce_app_flutter/components/custom_suffix_icon.dart';
import 'package:ecommerce_app_flutter/components/default_buttom.dart';
import 'package:ecommerce_app_flutter/helpers/validators.dart';
import 'package:ecommerce_app_flutter/screens/login/login_screen.dart';
import 'package:ecommerce_app_flutter/viewmodels/user_app_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Consumer<UserAppViewModel>(
        builder: (context, userAppViewModel, child) {
          return Column(
            children: [
              TextFormField(
                controller: emailController,
                enabled: !userAppViewModel.loading,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: (email) {
                  if (!emailValid(email)) {
                    return "Email inválido";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Informe seu email",
                  labelText: "Email",
                  suffixIcon: CustomSuffixIcon(
                    icon: "assets/icons/mail.svg",
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              DefaultButton(
                text: "Recuperar senha",
                child: userAppViewModel.loading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                press: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

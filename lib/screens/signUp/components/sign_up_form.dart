import 'package:ecommerce_app_flutter/components/custom_suffix_icon.dart';
import 'package:ecommerce_app_flutter/components/default_buttom.dart';
import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/helpers/validators.dart';
import 'package:ecommerce_app_flutter/models/user_app.dart';
import 'package:ecommerce_app_flutter/screens/home/home_screen.dart';
import 'package:ecommerce_app_flutter/viewmodels/user_app_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Form(
      key: formKey,
      child: Consumer<UserAppViewModel>(
        builder: (context, userAppViewModel, child) {
          return Column(
            children: [
              TextFormField(
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
                height: 20,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                validator: (password) {
                  if (password.isEmpty) {
                    return "Senha inválida";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Informe sua senha",
                  labelText: "Senha",
                  focusColor: kPrimaryColor,
                  suffixIcon: CustomSuffixIcon(
                    icon: "assets/icons/lock.svg",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                validator: (password) {
                  if (password.isEmpty) {
                    return "Senha inválida";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Confirme sua senha",
                  labelText: "Confirme sua senha",
                  focusColor: kPrimaryColor,
                  suffixIcon: CustomSuffixIcon(
                    icon: "assets/icons/lock.svg",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultButton(
                text: "Entrar",
                child: userAppViewModel.loading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    : Text(
                        "Entrar",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                press: userAppViewModel.loading
                    ? null
                    : () {
                        if (formKey.currentState.validate()) {
                          userAppViewModel.signIn(
                            user: UserApp(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                            onFail: (e) {
                              scaffoldKey.currentState.showSnackBar(SnackBar(
                                content: Text("Falha ao entrar: $e"),
                                backgroundColor: Colors.red,
                              ));
                              return;
                            },
                            onSucess: () {
                              Navigator.pushNamed(
                                  context, HomeScreen.routeName);
                            },
                          );
                        }
                      },
              ),
            ],
          );
        },
      ),
    );
  }
}

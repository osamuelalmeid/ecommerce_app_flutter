import 'package:ecommerce_app_flutter/screens/signUp/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NewAcountText extends StatelessWidget {
  const NewAcountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Não possui conta?"),
          SizedBox(
            width: 10,
          ),
          Text(
            "Se inscreva",
            style: TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

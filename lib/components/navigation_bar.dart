import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
        bottom: 0,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.18),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon:
                Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          IconButton(
            icon: Icon(Icons
                .favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons
                .shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

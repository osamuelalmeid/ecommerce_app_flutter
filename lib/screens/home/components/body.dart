import 'package:ecommerce_app_flutter/screens/home/components/featured_products.dart';
import 'package:ecommerce_app_flutter/screens/home/components/header_and_searchbox.dart';
import 'package:ecommerce_app_flutter/screens/home/components/recomended_products.dart';
import 'package:ecommerce_app_flutter/screens/home/components/title_and_more_button.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderAndSearchBox(size: size),
          TitleAndMoreButton(
            title: "Recomendados",
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          RecomendedProducts(),
          TitleAndMoreButton(
            title: "Destaques",
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          FeaturedProducts(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
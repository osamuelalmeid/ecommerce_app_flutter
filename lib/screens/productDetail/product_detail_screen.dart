import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/components/body.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product_detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

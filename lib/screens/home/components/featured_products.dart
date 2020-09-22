import 'package:ecommerce_app_flutter/screens/productDetail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedProductCard(
            image: "assets/images/camiseta_1.jpg",
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          FeaturedProductCard(
            image: "assets/images/camiseta_2.jpg",
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          FeaturedProductCard(
            image: "assets/images/camiseta_3.jpg",
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({
    Key key,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 10,
          bottom: 10,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
    );
  }
}

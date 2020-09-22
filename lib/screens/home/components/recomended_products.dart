import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class RecomendedProducts extends StatelessWidget {
  const RecomendedProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
            image: "assets/images/product-1.jpg",
            name: "Gemini",
            description: "Metal",
            price: 59.99,
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          ProductCard(
            image: "assets/images/product-2.jpg",
            name: "Red boat",
            description: "Fio naval",
            price: 54.99,
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          ProductCard(
            image: "assets/images/product-3.jpg",
            name: "Coloral",
            description: "Algodão",
            price: 49.99,
            press: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName);
            },
          ),
          ProductCard(
            image: "assets/images/product-4.jpg",
            name: "Stones",
            description: "Pedras",
            price: 79.99,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(),
                  ));
            },
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.image,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.press,
  }) : super(key: key);

  final String image, name, description;
  final num price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 50,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$name\n",
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$description",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "R\$ $price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

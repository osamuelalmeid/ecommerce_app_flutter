import 'package:ecommerce_app_flutter/constants.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/components/image_product_detail.dart';
import 'package:ecommerce_app_flutter/screens/productDetail/components/title_and_price.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageProductDetail(size: size),
          TitleAndPrice(
            title: "Produto",
            description: "Material",
            price: 59.99,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.8,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    )
                  ),
                  color: kPrimaryColor,
                  onPressed: () {}, 
                  child: Text(
                    "Adicionar ao carrinho",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                    ),
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
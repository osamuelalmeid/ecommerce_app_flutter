import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  Product.fromDocument(DocumentSnapshot document) {
    id = document.id;
    name = document.data()["name"] as String;
    description = document.data()["description"] as String;
    price = document.data()["price"] as num;
    stock = document.data()["stock"] as int;
    images = List<String>.from(document.data()["images"] as List<dynamic>);
  }

  String id;
  String name;
  String description;
  num price;
  int stock;
  List<String> images;

  bool get hasStock {
    return stock > 0;
  }
}

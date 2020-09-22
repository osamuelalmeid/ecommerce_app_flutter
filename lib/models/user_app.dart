import 'package:cloud_firestore/cloud_firestore.dart';

class UserApp {

  UserApp({this.email, this.password, this.name, this.id});

  UserApp.fromDocument(DocumentSnapshot document) {
    id = document.id;
    name = document.data()['name'] as String;
    email = document.data()['email'] as String;
  }

  String id;
  String name;
  String email;
  String password;
  String confirmPassword;
  bool admin = false;

  DocumentReference get firestoreRef =>
      FirebaseFirestore.instance.doc("users/$id");

  CollectionReference get cartReference => firestoreRef.collection("cart");

  Future<void> saveData() async {
    await firestoreRef.set(toMap());
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
    };
  }
  
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_flutter/helpers/firebase_errors.dart';
import 'package:ecommerce_app_flutter/models/user_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class UserAppViewModel extends ChangeNotifier {
  UserAppViewModel() {
    _loadCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  UserApp user;
  bool _loading = false;
  bool get loading => _loading;
  bool get isLoggedIn => user != null;

  Future<void> signIn(
      {UserApp user, Function onFail, Function onSucess}) async {
    loading = true;
    try {
      /*
      final result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

          await _loadCurrentUser(firebaseUser: result.user);

      */

      //mock login
      await sleep();

      onSucess();
    } on PlatformException catch (e) {
      onFail(getErrorString(e.code));
    }
    loading = false;
  }

  Future<void> signUp(
      {UserApp user, Function onFail, Function onSucess}) async {
    loading = true;
    try {
      final result = await auth.createUserWithEmailAndPassword(
          email: user.email, password: user.password);

      user.id = result.user.uid;
      this.user = user;

      await user.saveData();

      onSucess();
    } on PlatformException catch (e) {
      onFail(getErrorString(e.code));
    }
    loading = false;
  }

  void signOut() {
    auth.signOut();
    user = null;
    notifyListeners();
  }

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> _loadCurrentUser({User firebaseUser}) async {
    final User currentUser = firebaseUser ?? auth.currentUser;
    if (currentUser != null) {
      final DocumentSnapshot docUser =
          await firestore.collection('users').doc(currentUser.uid).get();
      user = UserApp.fromDocument(docUser);

      notifyListeners();
    }
  }

  // mock login
  Future sleep() {
    return new Future.delayed(const Duration(seconds: 2), () => "2");
  }
}

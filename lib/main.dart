import 'package:ecommerce_app_flutter/routes.dart';
import 'package:ecommerce_app_flutter/screens/home/home_screen.dart';
import 'package:ecommerce_app_flutter/screens/login/login_screen.dart';
import 'package:ecommerce_app_flutter/theme.dart';
import 'package:ecommerce_app_flutter/viewmodels/products_viewmodel.dart';
import 'package:ecommerce_app_flutter/viewmodels/user_app_viewmodel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserAppViewModel(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (context) => ProductViewModel(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        theme: theme(),
        initialRoute: LoginScreen.routeName,
        routes: routes,
      ),
    );
  }
}
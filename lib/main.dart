import 'package:final_ecom_practice/screen/home_page.dart';
import 'package:final_ecom_practice/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_com Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routeName: (context) => HomePage(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

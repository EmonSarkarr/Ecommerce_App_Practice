import 'dart:async';

import 'package:final_ecom_practice/screen/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName ='/splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
  Timer(const Duration(seconds: 5), () {
    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const LoginPage()) );
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("LOGO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
              SizedBox(height: 50),
              CircularProgressIndicator()
            ],
          )


        ),
      ),
    );
  }
}

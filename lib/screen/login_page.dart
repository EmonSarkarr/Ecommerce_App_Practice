import 'package:final_ecom_practice/screen/signup_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName = '/loginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size size;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  bool isLogin = false;

  final form_key=GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    super.dispose;
  }
  @override
  Widget build(BuildContext context) {
    size =  MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(centerTitle: true, title: const Text('L O G I N      P A G E')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height / 7,
              width: size.width / 3,
              decoration:  BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(70),
                image: DecorationImage(
                  image: AssetImage('lib/asset/leaves.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                onTap: () {},
                controller:emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email or Password",
                    labelText: "Email or PhoneNumber"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                onTap: () {},
               controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          passwordController.clear();
                        },
                        icon: const Icon(Icons.cancel)),
                    hintText: "Enter Your Password",
                    labelText: "Password"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {

                  isLogin = true;
                  authenticate();

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()) );

              },
              child: Container(
                height: 60,
                width: size.width / 2,
                child:  Center(
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("",
                style: TextStyle(color: Colors.red)),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),

            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                authenticate();
                Navigator.pushNamed(context, SignupPage.routeName);
              },
              child: RichText(

                  text: const TextSpan(
                      text: "New user?",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                            text: "Are you want to",
                            style: TextStyle(fontSize: 20, color: Colors.black)),
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(color: Colors.green, fontSize: 25))
                      ])),
            ),
          ],
        ),
      ),
      ),
    );
  }

  void authenticate() async {


  }
}

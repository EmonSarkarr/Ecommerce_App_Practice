import 'package:final_ecom_practice/screen/home_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  static const String routeName ='/signupPage';
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late Size size;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height / 5,
              width: size.width / 2,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                image: DecorationImage(
                  image: AssetImage('lib/asset/leaves.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text(
              "Sign Up",
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
                controller: emailController,
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
          
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
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
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
              child: TextField(
                onTap: () {},
                controller: fullNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    hintText: "Enter Your FullName",
                    labelText: "FullName"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomePage.routeName);
              },
              child: Container(
                height: 60,
                width: size.width / 2,
                child: Center(
                  child: Text("Register",
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


          ],
        ),
      ),
    );
  }
}

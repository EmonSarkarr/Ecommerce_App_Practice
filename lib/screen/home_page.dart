import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: const [
        //     CircleAvatar(
        //       backgroundColor: Colors.green,
        //     )
        //   ],
        //   leading: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.menu),
        //   ),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              CircleAvatar(
                child: Image.asset('lib/asset/person_placeholder.png',fit: BoxFit.cover),
              )
            ]),
            const Text('Chose Your Best Product',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 500,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        Text('Search a product')
                      ]),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 100,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sort,
                        color: Colors.white,
                      )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

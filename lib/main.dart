import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.white,
      child: Column(
        children: [
          upperSection(context),
          const SizedBox(
            height: 15,
          ),
          Stack(children: [
            Container(
              child: Image.asset(
                "lib/assets/images/Group 8131.jpg",
                scale: 0.95,
              ),
            ),
            Positioned(
              bottom: 8,
              left : 130,
              child: Container(
                
                width: MediaQuery.of(context).size.width*0.35,
                child: CupertinoSearchTextField(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      ),
                  itemSize: 10,
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    size: 15,
                  ),
                  padding: const EdgeInsets.only(bottom:0, left: 5, top: 3),
                  placeholder: "Search your courses",
                  placeholderStyle: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    )));
  }

  Container upperSection(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: Color.fromARGB(255, 201, 200, 200),
            blurRadius: 5,
          )
        ]),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // const SizedBox(height: 10,),
                  Row(
                    children: const [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Sector-44, Real Estate, Sector- 62, Gurugram",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(220, 65, 88, 89)),
                      ),
                    ],
                  ),
                  const Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      itemSize: 35,
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        size: 25,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        size: 25,
                      ),
                      padding:
                          const EdgeInsets.only(bottom: 10, left: 5, top: 10),
                      placeholder: "Search for a serive",
                    ),
                  ),
                  const Icon(
                    Icons.whatsapp,
                    size: 35,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

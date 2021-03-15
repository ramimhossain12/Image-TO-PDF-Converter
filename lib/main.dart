import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Menu()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(

                height: 500,
                width: 600,
                child: Lottie.asset('assets/splashback.json'),),
            SizedBox(height: 10),
            Text(
              "Image To PDF Converter",

              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.red),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(

                "Develope By Ramim Hossain ",

                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

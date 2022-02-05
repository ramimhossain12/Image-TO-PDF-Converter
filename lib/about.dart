import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_to_pdf/widgets/info_card.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
// class About extends StatefulWidget {
//   @override
//   _AboutState createState() => _AboutState();
// }
//
// class _AboutState extends State<About> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//        home: Scaffold(
//          appBar: AppBar(
//              backgroundColor: Colors.black,
//              title: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//
//
//                  Text("Developer ",style: TextStyle(color:Colors.red),),
//                  Text("About",style: TextStyle(color:Colors.white),),
//                ],
//              )
//          ),
//
//          body: new Center(
//
//
//              child: new Column(
//
//
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.center,
//
//
//                children: <Widget>[
//
//                  SizedBox(
//
//                    height: 300,
//                    width: 600,
//                    child: Lottie.asset('assets/splashback.json'),),
//                Text("Md. Ramim Hossain",style: TextStyle(color: Colors.black,fontSize: 34,),),
//                  Padding(
//                    padding: const EdgeInsets.only(top: 15, left: 15, bottom: 20),
//                    child: Text("I am Android & iOS Mobile Application and Game Developer .Algorithms Expert.I am a passionate tech lover & problem solver always ready to face new challenges."),
//                  ),
//
//
//                  Padding(
//                    padding: const EdgeInsets.all(10.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: const <Widget>[
//                        Icon(
//
//                          Icons.favorite,
//                          color: Colors.pink,
//                          size: 27.0,
//
//                        ),
//                        Icon(
//                          Icons.phone,
//                          color: Colors.green,
//                          size: 30.0,
//                        ),
//                        Icon(
//
//
//                          Icons.email,
//                          color: Colors.blue,
//                          size: 36.0,
//                        ),
//                      ],
//                    ),
//                  )
//                ],
//              )),
//        ),
//
//     );
//
//
//
//
//   }
// }

const url = "http://ramimhossain.info/";
const email = "ramim.cse.info@gmail.com";
const phn = "+880 1852068420";
const location = "Dhaka, Bangladesh";

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal[200],
      backgroundColor:   Color(0xffea3c53),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/ff.jpg'),
          ),
          Text(
            "Ramim  Hossain",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source'),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: Divider(
              // color: Colors.teal.shade700,
              color: Colors.white,
            ),
          ),
          InfoCard(
            text: phn,
            icon: Icons.phone,
              onPressed: () async {
                String removeSpaceFromPhoneNumber =
                phn.replaceAll(new RegExp(r"\s+\b|\b\s"), "");
                final phoneCall = 'tel:$removeSpaceFromPhoneNumber';
                if (!await launcher.launch(phoneCall)) throw 'Error';
              }
          ),
          InfoCard(
            text: email,
            icon: Icons.email,
              onPressed: () async {
              final emailAdress ='mailto:$email';
                if (!await launcher.launch(emailAdress)) throw 'Error';
              }
          ),
          InfoCard(
              text: url,
              icon: Icons.web,
              onPressed: () async {
                if (!await launcher.launch(url)) throw 'Error';
              }),
          InfoCard(
            text: location,
            icon: Icons.location_city,
            onPressed: () {
              print("pg");
            },
          )
        ],
      )),
    );
  }
}

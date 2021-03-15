import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
             backgroundColor: Colors.black,
             title: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [


                 Text("Developer ",style: TextStyle(color:Colors.red),),
                 Text("About",style: TextStyle(color:Colors.white),),
               ],
             )
         ),

         body: new Center(


             child: new Column(


               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,


               children: <Widget>[

                 SizedBox(

                   height: 300,
                   width: 600,
                   child: Lottie.asset('assets/splashback.json'),),
               Text("Md. Ramim Hossain",style: TextStyle(color: Colors.black,fontSize: 34,),),
                 Padding(
                   padding: const EdgeInsets.only(top: 15, left: 15, bottom: 20),
                   child: Text("I am Android & iOS Mobile Application and Game Developer .Algorithms Expert.I am a passionate tech lover & problem solver always ready to face new challenges."),
                 ),


                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: const <Widget>[
                       Icon(

                         Icons.favorite,
                         color: Colors.pink,
                         size: 27.0,

                       ),
                       Icon(
                         Icons.phone,
                         color: Colors.green,
                         size: 30.0,
                       ),
                       Icon(


                         Icons.email,
                         color: Colors.blue,
                         size: 36.0,
                       ),
                     ],
                   ),
                 )
               ],
             )),
       ),

    );




  }
}
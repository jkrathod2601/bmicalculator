import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi_calculator/input.dart';
import 'package:bmi_calculator/second.dart';
import 'package:bmi_calculator/third.dart';
import 'brain.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() => runApp(MaterialApp(home:new  MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new BMICalculator(),
        title: new Text('BMICALCULATOR BY BEAT',
          style: new TextStyle(
              color:Colors.white ,
              fontWeight: FontWeight.bold,
              fontSize: 15.0
          ),),
        image: new Image.network('https://cdn2.iconfinder.com/data/icons/men-women-health-wildberry-vol-1/256/BMI_Calculator-512.png'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 170.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.green
    );
  }
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        backgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.white,


        ),
        textTheme: TextTheme(
          body1: TextStyle(
            color:Colors.white
          ),
        )
      ),
      home:InputPage(),
      routes: {
        '/first':(context)=>InputPage(),
        '/second1':(context)=>second(),
        '/third1':(context)=>third(),
      },
    );
  }
}



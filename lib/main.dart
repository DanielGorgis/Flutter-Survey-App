import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_interface_app/FinalPage.dart';
import 'package:flutter_interface_app/SecondQuestion.dart';
import 'package:flutter_interface_app/ThirdQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'FirstQuestion.dart';
import 'FourthQuestion.dart';
import 'FifthQuestion.dart';
import 'FinalPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.red,
        backgroundColor: Colors.grey
      ),
      routes: <String, WidgetBuilder>{
      '/FirstQuestion' : (BuildContext context) => new FirstQuestion(),
      '/SecondQuestion': (BuildContext context) => new SecondQuestion(),
      '/ThirdQuestion': (BuildContext context) => new ThirdQuestion(),
      '/FourthQuestion':(BuildContext context) => new FourthQuestion(),
      '/FifthQuestion':(BuildContext context) => new FifthQuestion(),
      '/FinalPage':(BuildContext context) => new FinalPage(),
      
      },
      home: new FirstQuestion(),
    );
  }
}



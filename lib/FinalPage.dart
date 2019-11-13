import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/ThirdQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'GlobalState.dart';


class FinalPage extends StatefulWidget{
  @override
  _FinalPageState createState() => new _FinalPageState();

}

class _FinalPageState extends State<FinalPage>{

GlobalState _store = GlobalState.instance;

bool _a = false;
bool _b = false;
bool _c = false;
bool _d = false;
bool _e = false;
bool _f = false;
bool _g = false;

//Make sure to change the Void methods


void _aChanged(bool value) => setState(() => _a = value);
void _bChanged(bool value) => setState(() => _b = value);
void _cChanged(bool value) => setState(() => _c = value);
void _dChanged(bool value) => setState(() => _d = value);
void _eChanged(bool value) => setState(() => _e = value);
void _fChanged(bool value) => setState(() => _f = value);
void _gChanged(bool value){
  setState(() {
  _a = value;
  _b = value;
  _c = value;
  _d = value;
  _e = value;
  _f = value;
  _g = value;
  });
 



}



@override
  Widget build(BuildContext context) {
  var introduction;

  if (_store.get("name") == "Kristofer.png"){

  introduction = "Du minder os om Christoffer M. Einersen, han er en rigtig kodehaj ligesom dig!";
}
  else if(_store.get("name") == "Sophie.png"){
      introduction = "Du minder os om  Sofia Church og Kirsten Lorenzen, de elsker IBM Design thinking principperne og vil altid gerne lære fra sig";


  }
    else if(_store.get("name") == "Croft.png"){
      introduction = "Du minder os om Micklas Croft!, han er både the agile master og projektleder!";

  }

    return Scaffold(
      appBar: AppBar(
        title: Text("IBM Client Innovation Center"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          Text(introduction),
  
          Image.asset("assets/${_store.get("name")}"),
          
          
          ],
        ),
      ),
      
    );
  }
}



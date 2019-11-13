import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/FirstQuestion.dart';
import 'package:flutter_interface_app/FourthQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ThirdQuestion extends StatefulWidget{
  @override
  _ThirdQuestionState createState() => new _ThirdQuestionState();

}

class _ThirdQuestionState extends State<ThirdQuestion>{
bool _a = false;
bool _b = false;
bool _c = false;
bool _d = false;
bool _e = false;
bool _f = false;



void _aChanged(bool value) => setState(() => _a = value);
void _bChanged(bool value) => setState(() => _b = value);
void _cChanged(bool value) => setState(() => _c = value);
void _dChanged(bool value) => setState(() => _d = value);
void _eChanged(bool value) => setState(() => _e = value);
void _fChanged(bool value) => setState(() => _f = value);






@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IBM Client Innovation Center"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            
            //SizedBox(height: 1,),
           

          
            Text("Hvordan ser din ideelle arbedjsuge ud. Vælg 2",style: Theme.of(context).textTheme.display1,textAlign: TextAlign.center,),
            Divider(height: 35.0,),
            CheckboxListTile(
            value: _a,
            onChanged: _aChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Rundt omkring fra kontor til kunde og omvendt"),
            //subtitle: new Text("Jeg kender en god restaurant på..."),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _b,
            onChanged: _bChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Frem og tilbage fra møde til møde"),
            //subtitle: new Text("25 Monster, Check.. Chips, Check.. Slik, Check.. F*ck jeg glemte dip!!"),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _c,
            onChanged: _cChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Jeg sidder dybt koncentreret i arbejdsopgaver"),
            //subtitle: new Text("Vi tager lige 5km mere!"),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _d,
            onChanged: _dChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            //title: new Text("Filmklubben"),
            title: new Text("Jeg foretrækker at være stationær i min battlestation."),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _e,
            onChanged: _eChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Jeg er the Go-to-guy og derfor skal kollegaer altid vide hvor jeg sidder"),
            //subtitle: new Text("Har du læst Kahneman's bestseller?"),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _f,
            onChanged: _fChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Jeg er planlagt til punkt og prikke"),
            //subtitle: new Text("oooog vi tæller ned 5..4..3..2..1 klokken er 16:00!! "),
            secondary: Icon(Icons.person),
            activeColor: Colors.lightBlueAccent,
            ),
           
            RaisedButton(
              
              color: Colors.lightBlueAccent,
              splashColor: Colors.white,
              child: new Text(
                      "Næste",
                    ),
            onPressed: () {
              
              print("sdas");
              Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => FourthQuestion()),);
            },
            
            )
          
          ],
        ),
      ),
      
    );
  }
}



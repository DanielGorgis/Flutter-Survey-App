import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/ThirdQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'GlobalState.dart';


class SecondQuestion extends StatefulWidget{
  @override
  _SecondQuestionState createState() => new _SecondQuestionState();

}

class _SecondQuestionState extends State<SecondQuestion>{

GlobalState _store = GlobalState.instance;

bool _a = false;
bool _b = false;
bool _c = false;
bool _d = false;
bool _e = false;
bool _f = false;
bool _g = false;


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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("IBM Client Innovation Center"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            
            //SizedBox(height: 1,),
           

          
            Text("Vælg 2 som du bedst kan identificere dig med ",style: Theme.of(context).textTheme.display1,textAlign: TextAlign.center,),
            Divider(height: 35.0,),
            CheckboxListTile(
            value: _a,
            onChanged: _aChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Madklubben"),
            subtitle: new Text("Jeg kender en god restaurant på..."),
            secondary: Icon(Icons.fastfood),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _b,
            onChanged: _bChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("LAN fest"),
            subtitle: new Text("25 Monster, Check.. Chips, Check.. Slik, Check.. F*ck jeg glemte dip!!"),
            secondary: Icon(Icons.computer),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _c,
            onChanged: _cChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Løbe klubben"),
            subtitle: new Text("Vi tager lige 5km mere!"),
            secondary: Icon(Icons.directions_run),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _d,
            onChanged: _dChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Filmklubben"),
            subtitle: new Text("Der var jo plads til to på den skide tømmerflåde."),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _e,
            onChanged: _eChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Bogklubben"),
            subtitle: new Text("Har du læst Kahneman's bestseller?"),
            secondary: Icon(Icons.book),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _f,
            onChanged: _fChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Fredagsbar"),
            subtitle: new Text("oooog vi tæller ned 5..4..3..2..1 klokken er 16:00!! "),
            secondary: Icon(Icons.local_drink),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _g,
            onChanged: _gChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Jeg er frisk på det hele"),
            subtitle: new Text("Er der øl?? fedt, jeg kommer."),
            secondary: Icon(Icons.check_box),
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
                       MaterialPageRoute(builder: (context) => ThirdQuestion()),);
            },
            
            )
          
          ],
        ),
      ),
      
    );
  }
}



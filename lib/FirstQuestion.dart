import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/SecondQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import'GlobalState.dart';

class FirstQuestion extends StatefulWidget{
  @override
  _FirstQuestionState createState() => new _FirstQuestionState();


}

class _FirstQuestionState extends State<FirstQuestion>{

TextEditingController _name;
GlobalState _store = GlobalState.instance;

void initState(){
  _name = new TextEditingController();
  _store.set("name","");
  _name.text = _store.get("name");
  
}




bool _a = false;
bool _b = false;
bool _c = false;
bool _d = false;
bool _e = false;
bool _f = false;
bool _g = false;
bool _h = false;
bool _i = false;
bool _j = false;

List<bool> listOfBools = new List();

void _fChanged(bool value){
  setState(() {
    _f = value;
    _store.set("name", "Kristofer.png");

  });
}

void _eChanged(bool value){
  setState(() {
    _e = value;
   
    _store.set("name", "Croft.png");

  });
}

void _dChanged(bool value){
  setState(() {
    _d = value;
   
    _store.set("name", "Sophie.png");

  });
}

 

void _aChanged(bool value) => setState(() => _a = value);
void _bChanged(bool value) => setState(() => _b = value);
void _cChanged(bool value) => setState(() => _c = value);
//void _dChanged(bool value) => setState(() => _d = value);
//void _eChanged(bool value) => setState(() => _e = value);
//void _fChanged(bool value) => setState(() => _f = value);
void _gChanged(bool value) => setState(() => _g = value);
void _hChanged(bool value) => setState(() => _h = value);
void _iChanged(bool value) => setState(() => _i = value);
void _jChanged(bool value) => setState(() => _j = value);

@override
  Widget build(BuildContext context) {

    return 
    
        // your UI
        Scaffold(

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
           

            TextField(
              decoration: new InputDecoration.collapsed(
              
              hintText: 'Hvad studerer du?'
            ),
            
              style: Theme.of(context).textTheme.display1,
            textAlign: TextAlign.center,
            ),

            Text("Vælg 3 som siger dig mest"),

            CheckboxListTile(
            value: _a,
            onChanged: _aChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Cloud"),
            subtitle: new Text("Fly high!"),
            secondary: Icon(Icons.cloud),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _b,
            onChanged: _bChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("AI og Machine learning"),
            subtitle: new Text("Robots should rule"),
            secondary: Icon(Icons.my_location),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _c,
            onChanged: _cChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Data Science"),
            subtitle: new Text("Math genius?"),
            secondary: Icon(Icons.linear_scale),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _d,
            onChanged: _dChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Design thinking & User experience"),
            subtitle: new Text("We need the end users!"),
            secondary: Icon(Icons.star),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _e,
            onChanged: _eChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Projektledelse og management"),
            subtitle: new Text("Let me tell you how its done.."),
            secondary: Icon(Icons.person_pin),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _f,
            onChanged: _fChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Software development"),
            subtitle: new Text("Code speaks for it self."),
            secondary: Icon(Icons.code),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _g,
            onChanged: _gChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Krypto"),
            subtitle: new Text("Dollar dollar bills y'all"),
            secondary: Icon(Icons.monetization_on),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _h,
            onChanged: _hChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Blockchain"),
            subtitle: new Text("Save the trees! Merkletrees"),
            secondary: Icon(Icons.texture),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _i,
            onChanged: _iChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Agile"),
            subtitle: new Text("Look how flexible I am"),
            secondary: Icon(Icons.directions_run),
            activeColor: Colors.lightBlueAccent,
            ),
          
            RaisedButton(
              
              color: Colors.lightBlueAccent,
              splashColor: Colors.white,
              child: new Text(
                      "Næste",
                    ),
            onPressed: () {

              // if(_f = true){
              //   
              // }
              // if(_e = true){
              //  
              // }
              // if(_d = true){
              //   _store.set("name", "SofieKira");
              // }

              
              Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => SecondQuestion()),);
            
           
            },
            
            )
          
        ],
        ),
      ),
      
    );
  }
}



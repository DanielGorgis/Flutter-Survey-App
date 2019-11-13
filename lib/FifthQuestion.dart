import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/FinalPage.dart';
import 'package:flutter_interface_app/FirstQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class FifthQuestion extends StatefulWidget{
  @override
  _FifthQuestionState createState() => new _FifthQuestionState();

}

class _FifthQuestionState extends State<FifthQuestion>{
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
void _gChanged(bool value) => setState(() => _g = value);








@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hvad forbinder du med IBM CIC"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: GridView.count(
         
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: <Widget>[

              //Text("IBM Client Innovation",textAlign: TextAlign.center,),
              //Text(" Hvad forbinder du med det, vælg 2",textAlign: TextAlign.left,),
           
      
            
        
      Container(
        
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/coding.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new CheckboxListTile(
        title: new Text("Mørk kælder med massere af skærme",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _a,
        onChanged: _aChanged,
      ),
     
    ),
    
    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/confused.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      
     child: new CheckboxListTile(
        title: new Text("Hva fa'en er det??",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _b,
        onChanged: _bChanged,
      ),
    ),

    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/innovation.jpg'),
          fit: BoxFit.cover,
        ),
      ),
     child: new CheckboxListTile(
        title: new Text("Innovative og ny-tænkende",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _c,
        onChanged: _cChanged,
      ),
    ),

    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/pc.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new CheckboxListTile(
        title: new Text("I laver computere, ikk?",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _d,
        onChanged: _dChanged,
      ),
    ),
           
    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/suit.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new CheckboxListTile(
        title: new Text("Lak sko og flot jakkesæt",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _e,
        onChanged: _eChanged,
      ),
    ),

    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/unge.jpg'),
          fit: BoxFit.cover,
        ),
      ),
     child: new CheckboxListTile(
        title: new Text("Unge sprøde konsulenter",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _f,
        onChanged: _fChanged,
      ),
    ),

    Container(
      constraints: new BoxConstraints.expand(
        height: 200.0,
      ),
      alignment: Alignment.bottomLeft,
      padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/Watsontower.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: new CheckboxListTile(
        title: new Text("Stor konservativ virksomhed",style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white, backgroundColor: Colors.black
        )),
        value: _g,
        onChanged: _gChanged,
      ),
    ),

    RaisedButton(color: Colors.lightBlueAccent,
              splashColor: Colors.white,
              child: new Text(
                      "Afslut",style: Theme.of(context).textTheme.display1,textAlign: TextAlign.center,
                    ),
            onPressed: () {
              
              print("sdas");
              Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => FinalPage()),);
            },
            
            )

    

    
          ],
              ),
            );
          
        
    
    
    
  }
}



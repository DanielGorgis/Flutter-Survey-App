import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_interface_app/FirstQuestion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'FifthQuestion.dart';

class FourthQuestion extends StatefulWidget{
  @override
  _FourthQuestionState createState() => new _FourthQuestionState();

}

class _FourthQuestionState extends State<FourthQuestion>{
bool _a = false;
bool _b = false;
bool _c = false;
bool _d = false;
bool _e = false;
bool _f = false;
bool _g = false;
bool _h = false;



void _aChanged(bool value) => setState(() => _a = value);
void _bChanged(bool value) => setState(() => _b = value);
void _cChanged(bool value) => setState(() => _c = value);
void _dChanged(bool value) => setState(() => _d = value);
void _eChanged(bool value) => setState(() => _e = value);
void _fChanged(bool value) => setState(() => _f = value);
void _gChanged(bool value) => setState(() => _g = value);
void _hChanged(bool value) => setState(() => _h = value);






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
           

          
            Text("Vælg 2 serier du foretrækker",style: Theme.of(context).textTheme.display1,textAlign: TextAlign.center,),
            Divider(height: 35.0,),
            CheckboxListTile(
            value: _a,
            onChanged: _aChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Game of thrones"),
            subtitle: new Text("You know nothing John Snow.."),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _b,
            onChanged: _bChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Silicon valley"),
            subtitle: new Text("Jiiiaaan Yaaaaaanng!!!!!!"),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _c,
            onChanged: _cChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Mr.Robot"),
            subtitle: new Text("Unfortunately, we’re all human. Except me, of course."),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _d,
            onChanged: _dChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Big Bang Theory"),
            subtitle: new Text("Interesting. You're afraid of insects and women. Ladybugs must render you catatonic."),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
             CheckboxListTile(
            value: _e,
            onChanged: _eChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Gossip Girl"),
            subtitle: new Text("Fashion is the most powerful art there is"),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _f,
            onChanged: _fChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Californication"),
            subtitle: new Text("A morning of awkwardness is far better than a night of loneliness"),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _g,
            onChanged: _gChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Matador"),
            subtitle: new Text("Kan han så få hænderne væk! svinske mandsperson"),
            secondary: Icon(Icons.local_movies),
            activeColor: Colors.lightBlueAccent,
            ),
            CheckboxListTile(
            value: _h,
            onChanged: _hChanged ,
            controlAffinity: ListTileControlAffinity.leading,
            title: new Text("Badehotellet"),
            subtitle: new Text("Folk herovre i jylland kan godt være rigtig rigtig rare, selvom de ikke ser sådan ud"),
            secondary: Icon(Icons.local_movies),
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
                       MaterialPageRoute(builder: (context) => FifthQuestion()),);
            },
            
            )
          
          ],
        ),
      ),
      
    );
  }
}



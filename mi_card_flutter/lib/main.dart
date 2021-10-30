import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                // backgroundColor: Colors.grey,
                backgroundImage: AssetImage('Images/p1.jpg'),
              ),
              Text(
                'Harshal Jethwa',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                  title: Text(
                    '+91 23456789',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 20.0,
                  ),
                  title: Text(
                    'harshaljethwa3@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';


void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
} 


class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyApp> {


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tricks", textDirection: TextDirection.ltr,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.beenhere),
            onPressed: (){
              print("icon");
            },
          ),
           IconButton(
            icon: Icon(Icons.map),
            onPressed: (){
              print("icon");
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage("images/bg.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 16.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/samir.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Samir ALiyev", style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white)),
                      Text("samir.aliyev@code.edu.az", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Flutter"),
                  onTap: (){

                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Kotlin"),
                  onTap: (){

                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("React Native"),
                  onTap: (){

                  },
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print("fab");
        },
      ),
    );
    
  }
}
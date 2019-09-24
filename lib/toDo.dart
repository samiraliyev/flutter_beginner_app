import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';


void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData(
      primaryColor: Colors.purple,
      accentColor: Colors.white,
      brightness: Brightness.dark
    ),
  ));
} 


class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyApp> {

    String input = "";

    List myList = List();

  @override
    void initState(){
      super.initState();
      myList.add("nr.1");
      myList.add("nr.2");
      myList.add("nr.3");
      myList.add("nr.4");
      myList.add("nr.5");
      myList.add("nr.6");
    }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo", textDirection: TextDirection.ltr,)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text("Add ToDo"),
                content: TextField(
                  onChanged: (String value){
                    input = value;
                  },
                ),
                actions: <Widget>[
                  FloatingActionButton(
                    child: Text("Add"),
                    onPressed: (){
                      setState(() {
                       myList.add(input); 
                      });
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
          );
        //  print("fab");
        },
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int index){
          return Dismissible(
            key: Key(myList[index]),
            child: ListTile(
              title: Text(myList[index]),
              ),
              onDismissed: (directon){
                setState(() {
                 myList.removeAt(index); 
                });
              },
          );
        },
      )
    );
  }
}
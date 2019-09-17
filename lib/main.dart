import 'package:flutter/material.dart';


void main(){
  runApp(
    //MyStatelessWidget()
      MyStatefulWidget()
  );
}


class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: RaisedButton(
          child: Text("Click", textDirection: TextDirection.ltr,),
          onPressed: (){

          },
        ),
      ),
    );
  }
}





/*
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Center(
            child: Text("Hallo from flutter", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 30.0, color: Colors.white))
        )
    );
  }
}
*/

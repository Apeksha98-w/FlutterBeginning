import 'package:flutter/material.dart';

main(){
 runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hello World"),
    );
  }
}
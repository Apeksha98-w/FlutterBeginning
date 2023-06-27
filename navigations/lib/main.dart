import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Screens/HomePage.dart';
import 'Screens/Second_screen.dart';

void main() {
  runApp(
      DevicePreview(
          builder: (context)=> MyApp()
      ),
      );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Navigation',
      ),
      /*routes: <String,WidgetBuilder>{
        '/second': (context)=>SecondScreen(),
      },*/
    );
  }
}



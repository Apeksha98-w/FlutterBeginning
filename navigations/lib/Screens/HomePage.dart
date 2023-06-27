import 'package:flutter/material.dart';
import 'package:navigations/Screens/Second_screen.dart';

class MyHomePage extends StatefulWidget {
  var title;

  MyHomePage({this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Navigation Routes',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) {
                return SecondScreen("Hello Second Page!");
              }
          ));
          //Navigator.of(context).pushNamed('/second');
        },
        child: const Icon(Icons.add), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

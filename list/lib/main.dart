
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(
          builder: (context) => MyApp()
      )
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
          brightness: Brightness.dark,
          primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Change the Brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Change Image'),
            subtitle: Text('Change the Image'),
            trailing: Icon(Icons.menu),
            onLongPress: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Change Keyboard'),
            subtitle: Text('Change the Keyboard'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            subtitle: Text('Change the Settings'),
            trailing: Icon(Icons.menu),
          ),
          ListTile(
            leading: Icon(Icons.backup),
            title: Text('Back up'),
          ),
        ],
      )
        );
  }
}

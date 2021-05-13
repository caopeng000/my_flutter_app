import 'package:flutter/material.dart';

class RouterBPage extends StatefulWidget {
  const RouterBPage({Key key}) : super(key: key);

  @override
  _RouterBPageState createState() => _RouterBPageState();
}

class _RouterBPageState extends State<RouterBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterB"),
      ),

      body: new Center(
        child: new Text("RouterB"),
      ),
    );
  }
}

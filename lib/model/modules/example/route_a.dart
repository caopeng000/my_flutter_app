
import 'package:flutter/material.dart';

class RouteAPage extends StatefulWidget {
  const RouteAPage({Key key}) : super(key: key);

  @override
  _RouteAPageState createState() => _RouteAPageState();
}

class _RouteAPageState extends State<RouteAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterA"),
      ),
      body: new Center(
        child: new Text("RouterA"),
      ),
    );
  }
}

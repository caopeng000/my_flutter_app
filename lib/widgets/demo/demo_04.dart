import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  const PageDemo({Key key}) : super(key: key);

  @override
  _PageDemoState createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            print("leading");
          },
        ),
        elevation: 20,
        centerTitle: true,
      ),
    );
  }
}

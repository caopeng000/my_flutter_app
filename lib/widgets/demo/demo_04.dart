import 'dart:ffi';

import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  const PageDemo({Key key}) : super(key: key);

  @override
  _PageDemoState createState() => _PageDemoState();
}

class _PageDemoState extends State<PageDemo>
    with SingleTickerProviderStateMixin {
  List tabs = ["Flutter", "Android", "IOS"];
  TabController _controller;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    _controller = new TabController(
        initialIndex: _index, length: tabs.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _index=_controller.index;
      });
      print("object");
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

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
        bottom: TabBar(
          controller: _controller,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: Text(_index.toString()),
    );
  }
}

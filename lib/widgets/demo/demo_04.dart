import 'dart:ffi';

import 'package:flutter/material.dart';

class PageDemo extends StatefulWidget {
  List<Widget> widgets = [FlutterView(), AndroidView(), IosView()];

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
        _index = _controller.index;
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
        elevation: 20,
        centerTitle: true,
        bottom: TabBar(
          controller: _controller,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      drawer: MyDrawer(),
      body: TabBarView(
        children: widget.widgets,
        controller: _controller,
      ),
    );
  }
}

class FlutterView extends StatelessWidget {
  const FlutterView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("FlutterView"),
    );
  }
}

class AndroidView extends StatelessWidget {
  const AndroidView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("AndroidView"),
    );
  }
}

class IosView extends StatelessWidget {
  const IosView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("IosView"),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text("data"),
            )
          ],
        ),
        removeTop: true,
      ),
    );
  }
}

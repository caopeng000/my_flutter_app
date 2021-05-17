import 'package:flutter/material.dart';

class BottomNavigatorBarDemo extends StatefulWidget {
  const BottomNavigatorBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavigatorBarDemoState createState() => _BottomNavigatorBarDemoState();
}

class _BottomNavigatorBarDemoState extends State<BottomNavigatorBarDemo> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("底部选项卡"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "新增"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "我的")
        ],
        currentIndex: _index,
        onTap: (v){
          setState(() {
            _index=v;
          });
        },
      ),
      body: Center(
        child: Text(_index.toString()),
      ),
    );
  }
}

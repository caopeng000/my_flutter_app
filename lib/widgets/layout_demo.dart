import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局练习"),
      ),
      body: Container(
        color: Colors.grey,
        child: StackDemo(),
        // child: Column(
        //   children: [
        //     Container(color: Colors.red, width: 100, height: 100),
        //     Container(color: Colors.green, width: 150, height: 100),
        //     Container(color: Colors.yellow, width: 100, height: 100),
        //   ],
        // ),
        // child: Row(
        //   // textDirection:TextDirection.rtl,
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(color: Colors.red, width: 100, height: 200),
        //     Container(color: Colors.green, width: 100, height: 100),
        //     Container(color: Colors.yellow, width: 100, height: 100),
        //   ],
        // ),

        //
      ),
    );
  }
}

class WrapDemo extends StatefulWidget {
  const WrapDemo({Key key}) : super(key: key);

  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<int> list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 20; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      direction: Axis.vertical,
      alignment: WrapAlignment.start,
      runSpacing: 1.0,
      children: list
          .map((e) => Container(
                height: 100,
                width: 100,
                child: Text(e.toString()),
              ))
          .toList(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Stack(
        fit: StackFit.expand,
        alignment:AlignmentDirectional.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.red,
          ),
          Positioned(
            width: 20,
            height: 10,
            child: Container(color: Colors.yellow),
            // top: 10,
            // bottom: 10,
            // left: 10,
            // right: 10,
          )
          // Positioned(
          //     width: 200,
          //     height: 200,
          //     child: Container(
          //       color: Colors.yellow
          //     ),
          //   top:10,
          //   left: 10,
          //   right: 10,
          //   bottom: 10,
          // )
        ],
      ),
    );
  }
}
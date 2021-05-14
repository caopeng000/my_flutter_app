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

        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Container(color: Colors.red, width: 100, height: 200),
              flex: 1,
            ),
            Expanded(
              child: Container(color: Colors.green, width: 100, height: 200),
              flex: 2,
            ),
            Expanded(
              child: Container(color: Colors.yellow, width: 100, height: 200),
              flex: 1,
            ),

          ],
        ),
      ),
    );
  }
}

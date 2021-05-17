import 'package:flutter/material.dart';

class DedugDemo extends StatefulWidget {
  @override
  _DedugDemoState createState() => _DedugDemoState();
}

class _DedugDemoState extends State<DedugDemo> {
  int count=10;
  String test;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("调试"),
      ),
      body: Text(count.toString()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            count++;
            if(count==15){
              test="wang"*80000;
              print(test);
            }else{}
          });
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({Key key}) : super(key: key);

  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹框演示"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: _showAlert,
            child: Text("对话框"),
          )
        ],
      ),
    );
  }

  void _showAlert() async{
    var result= await  showDialog(context: context, builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text("标题"),
        content: Text("确认删除吗？"),
        actions: [
          FlatButton(onPressed: () {
            Navigator.of(context).pop(false);
          }, child: Text("确认")),
          FlatButton(onPressed: () {
            Navigator.pop(context,true);
          }, child: Text("删除")),
        ],
      );
    });
    print(result);
  }
}

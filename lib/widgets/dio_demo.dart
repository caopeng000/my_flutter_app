import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/global/Global.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({Key key}) : super(key: key);

  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    await Global.getInstance().dio.get("/dio/dio", queryParameters: {
      "id": "33223",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求Dio"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text("Get"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Post"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("异常捕获"),
          ),
        ],
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({Key key}) : super(key: key);

  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  Dio _dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio.options.baseUrl = "http://api.td0f7.cn:8083/";
    _dio.options.connectTimeout = 1000;
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

void _try() async {
  try {
    print("object");
  } catch (e) {

  }
}

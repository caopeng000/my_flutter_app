import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/demo/demo_01.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wangzhong"),
        elevation: 10,
        centerTitle: true,
      ),
      body: ProgressDemo(),
    );
  }
}


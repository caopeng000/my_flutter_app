import 'package:flutter/material.dart';
import 'package:my_flutter_app/viewmodel/MvvmDemoViewmodel.dart';
import 'package:provider/provider.dart';
class MvvmDemoView extends StatefulWidget {
  const MvvmDemoView({Key key}) : super(key: key);

  @override
  _MvvmDemoViewState createState() => _MvvmDemoViewState();
}

class _MvvmDemoViewState extends State<MvvmDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mvvm设计模式"),
      ),
      body: RaisedButton(
        child: Text("调用viewmodel"),
        onPressed:() async{
           context.read<MvvmDemoViewmodel>().get("id");
        },
      ),
    );
  }
}

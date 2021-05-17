import 'package:flutter/material.dart';
import 'package:my_flutter_app/provider/CountProvider.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key key}) : super(key: key);

  @override
  _ProviderDemoState createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider全局状态管理"),
      ),
      body: Column(
        children: [
          Text(Provider.of<CountProvider>(context).count.toString()),
          RaisedButton(onPressed: (){
            Navigator.of(context).pushNamed("provider2");
          },
          child: Text("跳转"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          context.read<CountProvider>().add();
        },
      ),
    );
  }
}

class ProviderDemoTwo extends StatelessWidget {
  const ProviderDemoTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          context.read<CountProvider>().add();
        },
      ),
    );
  }
}


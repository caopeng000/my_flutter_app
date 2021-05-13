import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.green,
        child: Text(
          "文本",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ));
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(onPressed: () {}, child: Text("漂浮按钮")),
        FlatButton(onPressed: () {}, child: Text("扁平按钮")),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("data"),
          color: Colors.green,
          textColor: Colors.white,
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("out"),
        ),
        IconButton(icon: Icon(Icons.home), onPressed: () {})
      ],
    );
  }
}

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.add),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        Container(
          width: double.infinity,
          child: Image.network(
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1114%2F042421135351%2F210424135351-8-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623486743&t=2a10bc59bb75e85aeb10642f6cc5e698"),
        ),
        Image.asset(
          "images/lake.jpeg",
          width: 200,
          height: 100,
        ),
      ],
    );
  }
}

class CheckDemo extends StatefulWidget {
  const CheckDemo({Key key}) : super(key: key);

  @override
  _CheckDemoState createState() => _CheckDemoState();
}

class _CheckDemoState extends State<CheckDemo> {
  bool _check=false;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


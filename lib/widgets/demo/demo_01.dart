import 'package:flutter/cupertino.dart';
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
  bool _check = false;
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
            value: _check,
            onChanged: (v) {
              setState(() {
                _check = v;
              });
            }),
        Switch(
            value: _switch,
            onChanged: (v) {
              setState(() {
                _switch = v;
              });
            })
      ],
    );
  }
}

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: .5,
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
          SizedBox(height: 16),
          Container(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              value: .5,
              valueColor: AlwaysStoppedAnimation(Colors.yellow),
            ),
          ),
          CupertinoActivityIndicator()
        ],
      ),
    );
  }
}

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tag");
      },
      onDoubleTap: () {
        print("double tag");
      },
      child: Text("data"),
    );
  }
}

class InputDemo extends StatefulWidget {
  const InputDemo({Key key}) : super(key: key);

  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  FocusNode _u = FocusNode();
  FocusNode _p = FocusNode();

  FocusScopeNode _focusScopeNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _user.dispose();
    _pass.dispose();
    _u.dispose();
    _p.dispose();
    if (_focusScopeNode != null) {
      _focusScopeNode.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              focusNode: _u,
              controller: _user,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "账号",
                hintText: "请输入账号",
              ),
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return "账号必须输入！";
                }
              },
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (v) {
                print("object");
              },
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _pass,
              focusNode: _p,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "密码",
                hintText: "请输入密码",
              ),
              obscureText: true,
              validator: (v) {
                if (v == null || v.length < 5) {
                  return "密码必须输入且大于5！";
                }
              },
              textInputAction: TextInputAction.send,
            ),
            RaisedButton(
              onPressed: () {
                if (_focusScopeNode == null) {
                  _focusScopeNode = FocusScope.of(context);
                }
                _focusScopeNode.requestFocus(_u);
                _focusScopeNode.unfocus();
                print((_key.currentState as FormState).validate().toString());
              },
              child: Text("提交"),
              color: Colors.blue,
            )
          ],
        ));
  }
}

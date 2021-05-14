import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                builder: (context) {
                  return MenuPage(
                    title: "菜单111",
                  );
                },
                settings: RouteSettings(name: "menu", arguments: {"name":"caopeng"}),
                maintainState: false,
                fullscreenDialog: false,
              ))
              .then((value) => print(value));
        },
        child: Text("登陆"),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final String title;

  const MenuPage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic arguments=ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(title+"  "+arguments.toString() ),
          centerTitle: true,
        ),
        body: RaisedButton(
          onPressed: () {
            Navigator.of(context).pop({"name", "caopen1g"});
          },
          child: Text("返回"),
        ));
  }
}

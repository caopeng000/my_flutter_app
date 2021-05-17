import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/alert_dialog_demo.dart';
import 'package:my_flutter_app/widgets/bottom_navigator.dart';
import 'package:my_flutter_app/widgets/card_demo.dart';
import 'package:my_flutter_app/widgets/demo/demo_01.dart';
import 'package:my_flutter_app/widgets/demo/demo_04.dart';
import 'package:my_flutter_app/widgets/grid_view_demo.dart';
import 'package:my_flutter_app/widgets/layout_demo.dart';
import 'package:my_flutter_app/widgets/listview_demo.dart';
import 'package:my_flutter_app/widgets/navigator_demo.dart';
import 'package:my_flutter_app/widgets/table_demo.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => PageDemo(),
        "layout":(context)=>LayoutDemo(),
        "navigator":(context)=>BottomNavigatorBarDemo(),
        "lv":(context)=>ListViewDemo(),
        "grid":(context)=>GridViewDemo(),
        "alert":(context)=>AlertDialogDemo(),
        "table":(context)=>TableDemo(),
        "card":(context)=>CardDemo()
      },
      initialRoute: "card",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      onGenerateRoute: (s) {
        print(s.name);
        switch (s.name) {
          case "menu":
            return MaterialPageRoute(builder: (context){
              return MenuPage();
            },settings: s);
            break;
          default:
            break;
        }
      },
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
      body: InputDemo(),
    );
  }
}

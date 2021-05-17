import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({Key key}) : super(key: key);

  @override
  _TableDemoState createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  List<Map> list = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 10; i++) {
      list.add({
        "name": "wang" + i.toString(),
        "gender": i % 1 == 0 ? "男" : "女",
        "select": false
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表格演示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        // child: Table(
        //   border: TableBorder.all(
        //       color: Colors.grey
        //   ),
        //   children: list.map((e) => TableRow(
        //       children: [
        //         Text(e["name"]),
        //         Text(e["gender"])
        //       ]
        //   )).toList(),
        // ),
        child: DataTable(
          columns: [
            DataColumn(label: Text("姓名")),
            DataColumn(label: Text("性别"))
          ],
          rows: list
              .map((e) => DataRow(
                      selected: e["select"],
                      onSelectChanged: (v) {
                        setState(() {
                          if (e["select"] != v) {
                            e["select"] = v;
                          }
                        });
                      },
                      cells: [
                        DataCell(Text(e["name"])),
                        DataCell(Text(e["gender"])),
                      ]))
              .toList(),
        ),
      ),
    );
  }
}

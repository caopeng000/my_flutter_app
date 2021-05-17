
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';
import 'package:my_flutter_app/model/MvvmDemoModel.dart';

class MvvmDemoViewmodel extends ChangeNotifier{
  MvvmDemoModel _model=MvvmDemoModel();

  void get(String id) async{
    var result=await _model.get(id);
    print(result.statusCode.toString()+" "+result.statusMessage);
    // Navigator.of(navigatorKey.currentContext).pushNamed("card");
  }
}
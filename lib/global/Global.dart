import 'package:dio/dio.dart';

class Global {
  static Global _instance;

  Dio dio;

  static Global getInstance() {
    if (_instance == null) {
      _instance = new Global();
    }
    return _instance;
  }

  Global() {
    dio = new Dio();
    dio.options = BaseOptions(
        baseUrl: "http://api.td0f7.cn:8083/",
        connectTimeout: 5000,
        sendTimeout: 5000,
        receiveTimeout: 5000,
        headers: {
          "token": "31221321",
        },
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json);
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print("请求" + options.headers.toString());
      print("请求" + options.extra.toString());
    }, onResponse: (e, handler) {
      print("返回" + e.toString());
    }, onError: (e, handler) {
      print("错误" + e.toString());
    }));
  }
}

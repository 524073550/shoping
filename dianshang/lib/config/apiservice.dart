import 'dart:_http';
import 'dart:async';

import 'package:dianshang/config/config.dart';
import 'package:dio/dio.dart';

//获取首页主题内容

Future getHomePageContent() async {
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencode");
    var formData = {'lon': '115.029', 'lat': '35.7689'};
    response = await dio.post(servicePath['homePageContent'], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口异常');
    }
  } catch (e) {
    return print('ERRER');
  }
}

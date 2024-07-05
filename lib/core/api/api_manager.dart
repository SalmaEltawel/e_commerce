import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/utils/constant.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? queryparameters}) {
    return dio.get(Constant.BASEURL + endPoint,
        queryParameters: queryparameters);
  }
  Future<Response> postData(
      {required String endPoint, Map<String, dynamic>? body}) {
    return dio.post(Constant.BASEURL + endPoint,
        data: body);
  }
}

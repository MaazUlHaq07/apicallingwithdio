// @dart=2.9
import 'package:dio/dio.dart';

class HttpService{
   Dio _dio;

  final baseUrl = "https://reqres.in/";

  HttpService(){
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));
  }


  Future<Response> getRequest(String endPoint) async{
    Response response;

    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }


  // Future<Response> getRequest(String endPoint) async {
  //   Response response;
  //   try {
  //     response = await _dio.get(endPoint);
  //   } on DioError catch (e) {
  //     print(e.message);
  //     throw Exception(e.message);
  //   }
  //
  //   return response;
  // }

    initializeInterceptor(){
      _dio.interceptors.add(InterceptorsWrapper(
          onError: (error, errorInterceptorHandler ){
            print(error.message);
          },
          onRequest: (request, requestInterceptorHandler){
            print("${request.method} | ${request.path}");
          },
          onResponse: (response, responseInterceptorHandler) {
            print('${response.statusCode}  ${response.data}');
          }
      ));
    }

  }


import 'package:dio/dio.dart';
class DioHelper{
  static late Dio dio;
  static void initialDio(){
    dio = Dio(
      BaseOptions(
        baseUrl: '',
        receiveDataWhenStatusError: true,
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'token':'',
          'content-type':'',
          'stripe-version':'',
        },
        receiveTimeout: const Duration(seconds: 60,),
        sendTimeout: const Duration(seconds: 60,)
      )
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String,dynamic>? data,
    Map<String,dynamic>? params,
    String lang = 'ar',
    String? contentType,
    String? token,
    String? stripeVersion,


})async{
    dio.options.headers = {
      'token':token,
      'content-type':contentType,
      'stripe-version':stripeVersion,
      'lang':lang
    };
    return await dio.post(url,data: data,queryParameters: params,);
  }
  static Future<Response> putData({
    required String url,
    Map<String,dynamic>? data,
    Map<String,dynamic>? params,
    String lang = 'ar',
    String? contentType,
    String? token,
    String? stripeVersion,


})async{
    dio.options.headers = {
      'token':token,
      'content-type':contentType,
      'stripe-version':stripeVersion,
      'lang':lang
    };
    return await dio.put(url,data: data,queryParameters: params,);
  }
  static Future<Response> getData({
    required String url,
    Map<String,dynamic>? data,
    Map<String,dynamic>? params,
    String lang = 'ar',
    String? contentType,
    String? token,
    String? stripeVersion,
})async{
    dio.options.headers = {
      'token':token,
      'content-type':contentType,
      'stripe-version':stripeVersion,
      'lang':lang
    };
    return await dio.get(url,data: data,queryParameters: params,);
  }
}
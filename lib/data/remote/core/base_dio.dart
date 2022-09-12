import 'package:dio/dio.dart';

class BaseDio {
  BaseDio._ (); //  Privatize the construction method

  static BaseDio _instance;

  Static basedio getinstance() {// get an instance through getInstance
    _instance ??= BaseDio._();

    return _instance;
  }

  Dio getDio() {
    final Dio dio = Dio();
    dio. options = BaseOptions(receiveTimeout: 66000, connectTimeout: 66000); //  Set timeout, etc
    dio. interceptors. add(HeaderInterceptor()); //  Adding interceptors, such as token, requires global parameters
    dio. interceptors. Add (prettydiologger) // add a log formatting tool class
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    compact: false,
    ));

    return dio;
  }
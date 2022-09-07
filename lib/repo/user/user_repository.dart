import 'package:dio/dio.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/base_repository.dart';

import '../../data/remote/api/api_service.dart';

class UserRepository implements BaseRepository {
  @override
  Future<UserResponse> getPersona() async {
    final client = ApiService(Dio(BaseOptions(contentType: "application/json")));
    return client.getPersona();
  }
}
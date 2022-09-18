import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/local/app_database.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/base_repository.dart';

import '../../data/remote/api/api_service.dart';

class UserRepository implements BaseRepository {
  static final userRepoProvider = Provider((ref) => UserRepository());

  @override
  Future<UserResponse> getPersona() async {
    final client = ApiService(Dio(BaseOptions(contentType: "application/json")));
    return client.getPersona();
  }

  @override
  addEmployee(Employee employee) async{
    // final database = await $FloorAppDatabase.databaseBuilder('app.database.db').build();
    // database.employeeDao.addEmployee(employee);
  }
}

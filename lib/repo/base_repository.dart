import 'package:freezed_demo/data/model/entity/employee.dart';

import '../data/model/response/user/user_response.dart';

abstract class BaseRepository {
  Future<UserResponse> getPersona();

  addEmployee(Employee employee);
}
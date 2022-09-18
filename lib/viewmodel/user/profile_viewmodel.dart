import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/repo/base_repository.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';

import '../../data/model/response/user/user_response.dart';
import '../../repo/user/user_repository.dart';
import '../../ui/provider/user/profile_provider.dart';

class ProfileViewModel extends BaseViewModel {
  final BaseRepository userRepo;
  ProfileViewModel(this.userRepo);

  Future<UserResponse> getPersona() => userRepo.getPersona();

  addEmployee(Employee employee) => userRepo.addEmployee(employee);
}

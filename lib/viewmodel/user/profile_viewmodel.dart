import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/user/user_repository.dart';

import '../base_viewmodel.dart';

class ProfileViewModel extends StateNotifier<String>{
  String value = "";


  ProfileViewModel(value) : super(value);

  String getName() {
    return value;
  }
  // final UserRepository userRepo;
  //
  // ProfileViewModel(this.userRepo)
  //
  // Future<UserResponse> getPersona() async {
  //   return await userRepo.getPersona();
  // }
}

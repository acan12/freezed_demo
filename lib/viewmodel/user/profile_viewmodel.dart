import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';

import '../../data/model/response/user/user_response.dart';
import '../../ui/provider/user/profile_provider.dart';

class ProfileViewModel extends BaseViewModel {
  // final UserRepository _userRepo;

  // static final instance = UserRepository._();

  // final UserRepository userRepo;
  //
  // ProfileViewModel(this.userRepo)
  //
  FutureProvider<UserResponse> getPersona() {
    return personalProfileProvider;
  }

  // final personalProvider = FutureProvider
}

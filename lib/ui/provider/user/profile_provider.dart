import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/repo/user/user_repository.dart';
import 'package:freezed_demo/viewmodel/user/profile_viewmodel.dart';

final profileViewmodelProvider = Provider((ref) {
  return ProfileViewModel(ref.read(UserRepository.userRepoProvider));
});

final personalProfileProvider = FutureProvider((ref) {
  final profileViewModel = ProfileViewModel(ref.read(UserRepository.userRepoProvider));
  return profileViewModel.getPersona();
});

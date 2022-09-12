import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/repo/user/user_repository.dart';

final personalProfileProvider = FutureProvider((_) {
  final userRepository = UserRepository.instance;
  return userRepository.getPersona();
});

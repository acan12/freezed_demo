import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/base_repository.dart';


class BaseViewModel extends StateNotifier<Object> {
  BaseViewModel(value) : super(value);
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseViewModel extends StateNotifier {
  BaseViewModel(state) : super(state);
}

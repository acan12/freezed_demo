import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/user/user_repository.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';
import 'package:freezed_demo/viewmodel/user/profile_viewmodel.dart';

final myprovider = StateNotifierProvider<ProfileViewModel, String>((ref) {
  return ProfileViewModel("Maulana Ichsan");
} );

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String name = ref.watch(myprovider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MVVM "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your name',
            ),
            Text(
              '${name}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => 2,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

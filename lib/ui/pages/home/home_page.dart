import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import '../../provider/user/profile_provider.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewmodel =  ref.watch(profileViewmodelProvider);
    final apiProvider = ref.watch(personalProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MVVM "),
      ),
      body: Center(
          child: apiProvider.when(
        data: (data) {
          return getColumn(data.full_name);
        },
        error: (err, stack) => Text("Errror: ${err.toString()}"),
        loading: () => Text("Loading..."),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewmodel.userRepo.addEmployee(Employee(1, "Dono", "dono_demo@mail.com", "28"));
          // ref.read(myprovider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget getColumn(String value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Text(
        'Your Value',
        style: TextStyle(fontSize: 14),
      ),
      Text(
        '$value',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

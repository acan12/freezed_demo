import 'package:floor/floor.dart';

@entity
class Employee {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String full_name;
  final String email;
  final String age;
  @ignore
  final bool isActive = false;

  Employee(this.id, this.full_name, this.email, this.age);
}

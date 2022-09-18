import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@entity
class Employee {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String full_name;
  final String email;
  final String age;

  Employee(this.id, this.full_name, this.email, this.age);
}

import 'package:floor/floor.dart';

import '../../model/entity/employee.dart';

@dao
abstract class EmployeeDao {
  @insert
  Future<void> insertEmployee(Employee employee);

  @Query('SELECT * FROM employee')
  Future<List<Employee>> getEmployees();

  @Query('DELETE FROM employee WHERE id = :id')
  Future<Employee?> deleteEmployee(int id);
}
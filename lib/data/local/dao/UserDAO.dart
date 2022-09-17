// import 'package:floor/floor.dart';
//
// import '../../model/entity/user.dart';
//
// @dao
// abstract class UserDAO {
//   @insert
//   Future<List<int>> insertUser(List<User> user);
//
//   @Query('SELECT * FROM user')
//   Future<List<User>> getUsers();
//
//   @Query('DELETE FROM user WHERE id = :id')
//   Future<User?> deleteUser(int id);
// }
import 'dart:async';
import 'package:floor/floor.dart';
import '../model/entity/user.dart';
import 'dao/UserDAO.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: 1, entities: [User])
abstract class AppDatabase extends FloorDatabase {
  // UserDAO get userDAO;
}

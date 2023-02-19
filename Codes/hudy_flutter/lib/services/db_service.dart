import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDB {
  static const String dbName = 'hudy.db';

  Future<Database> open() async {
    final Future<Database> database = openDatabase(
      join(await getDatabasesPath(), dbName),
      onCreate: (db, version) {
        // 데이터베이스에 CREATE TABLE 수행
        return db.execute(
          "CREATE TABLE holidays(id INTEGER PRIMARY KEY, name TEXT, year INTEGER, month INTEGER, day INTEGER, day_str TEXT, date TEXT, timestamp INTEGER, type TEXT)",
        );
      },
      version: 1,
    );

    return database;
  }
}

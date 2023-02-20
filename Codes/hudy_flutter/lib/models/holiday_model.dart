import 'package:hudy_flutter/services/db_service.dart';
import 'package:sqflite/sqflite.dart';

class HolidayModel {
  final int id, year, month, day, timestamp;
  final String name, dayStr, date, type;

  HolidayModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        year = json['year'],
        month = json['month'],
        day = json['day'],
        dayStr = json['day_str'],
        date = json['date'],
        timestamp = json['timestamp'],
        type = json['type'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'year': year,
      'month': month,
      'day': day,
      'day_str': dayStr,
      'date': date,
      'timestamp': timestamp,
      'type': type
    };
  }

  Future<void> insertDog(HolidayModel holiday) async {
    final Database db = await SQLiteDB().open();
    await db.insert(
      'holidays',
      holiday.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

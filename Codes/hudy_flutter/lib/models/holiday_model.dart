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
}

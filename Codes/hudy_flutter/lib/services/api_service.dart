import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:hudy_flutter/models/holiday_model.dart';

class APIService {
  static const String baseUrl = "https://api.hudy.co.kr/v1/";
  static const String holiday = "holiday";

  static Future<List<HolidayModel>> getHolidays() async {
    List<HolidayModel> holidayInstances = [];
    final url = Uri.parse("$baseUrl/$holiday");
    final resposne = await http.get(url);

    if (resposne.statusCode == 200) {
      final responseData = jsonDecode(resposne.body);
      final holidays = responseData['data'];
      for (var holiday in holidays) {
        holidayInstances.add(HolidayModel.fromJson(holiday));
      }
      return holidayInstances;
    }
    throw Error();
  }
}

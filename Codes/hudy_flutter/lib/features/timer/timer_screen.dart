import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hudy_flutter/constants/gaps.dart';
import 'package:hudy_flutter/constants/sizes.dart';
import 'package:hudy_flutter/models/holiday_model.dart';
import 'package:hudy_flutter/services/api_service.dart';
import 'package:hudy_flutter/services/db_service.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  bool isRunning = false;

  late Future<List<HolidayModel>> holidays;
  late HolidayModel holiday;

  late Timer timer;

  late DateTime targetDateTime;
  late Duration differenceDateTime;
  late String holidayName;
  late String date;
  late String dayStr;

  late SQLiteDB db;

  @override
  void initState() {
    super.initState();
    setDB();
    holidays = APIService.getHolidays();
  }

  void setDB() {
    db = SQLiteDB();
    db.open();
  }

  void onTick(Timer timer) {
    if (differenceDateTime.inSeconds == 0) {
      setState(() {
        isRunning = false;
      });
      timer.cancel();
    } else {
      setState(() {
        differenceDateTime = targetDateTime.difference(DateTime.now());
      });
    }
  }

  void setHolidayData(AsyncSnapshot<List<HolidayModel>> snapshot) {
    if (!isRunning) {
      holiday = snapshot.data!.first;
      snapshot.data!.removeAt(0);
      isRunning = true;

      targetDateTime = DateTime.parse(holiday.date);
      holidayName = holiday.name;
      date = "${holiday.year}. ${holiday.month}. ${holiday.day}";
      dayStr = holiday.dayStr;
      differenceDateTime = targetDateTime.difference(DateTime.now());
      timer = Timer.periodic(const Duration(seconds: 1), onTick);
    }
  }

  String format(Duration diff) =>
      "${diff.inDays}D ${diff.inHours % 24}H ${diff.inMinutes % 60}M ${diff.inSeconds % 60}S";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder(
            future: holidays,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                setHolidayData(snapshot);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      format(differenceDateTime),
                      style: const TextStyle(
                        fontSize: Sizes.size32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.v28,
                    Text(
                      holidayName,
                      style: const TextStyle(
                        fontSize: Sizes.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gaps.v8,
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      dayStr,
                      style: const TextStyle(
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

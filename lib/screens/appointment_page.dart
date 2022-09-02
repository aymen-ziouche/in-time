import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);
  static String id = "AppointmentPage";

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCalendar(
          view: CalendarView.month,
          todayHighlightColor: Color(0xff3683FC),
          timeSlotViewSettings: const TimeSlotViewSettings(
              startHour: 9,
              endHour: 16,
              nonWorkingDays: <int>[DateTime.friday, DateTime.saturday]),
        ),
      ),
    );
  }
}

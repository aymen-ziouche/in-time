import 'package:flutter/material.dart';
import 'package:in_time_digital/screens/appointment_page.dart';
import 'package:in_time_digital/screens/home_page.dart';
import 'package:in_time_digital/screens/input_page.dart';
import 'package:in_time_digital/screens/intro_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: OnBoarding.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        OnBoarding.id: (context) => const OnBoarding(),
        InputPage.id: (context) => const InputPage(),
        AppointmentPage.id: (context) => AppointmentPage(),
      },
    );
  }
}

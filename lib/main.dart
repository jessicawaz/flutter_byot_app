import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byot_app/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Object getPlatform() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ios';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return 'android';
    } else {
      return 'web';
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BYOToast',
      color: AppTheme.themeData.primaryColor,
      theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme,
      )),
      home: const Scaffold(
        body: HomeDashboard(),
      ),
    );
  }
}

class AppTheme {
  static ThemeData themeData = ThemeData(
      primaryColor: const Color.fromARGB(255, 250, 237, 205),
      backgroundColor: const Color.fromARGB(255, 233, 237, 201),
      primaryColorDark: const Color.fromARGB(255, 167, 196, 83),
      textTheme: const TextTheme(
          headline2: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w100, color: Colors.white),
          headline3: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
              color: Colors.black)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(150, 0, 0, 0),
          titleTextStyle:
              TextStyle(color: Color.fromRGBO(204, 213, 174, 1.0))));
}

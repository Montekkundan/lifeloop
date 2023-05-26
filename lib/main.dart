import 'package:flutter/material.dart';
import 'package:lifeloop/colors.dart';
import 'package:lifeloop/responsive/responsive_layout.dart';
import 'package:lifeloop/screens/mobile_screen_layout.dart';
import 'package:lifeloop/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lifeloop Ui',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.blue,
          onPrimary: Colors.white,
          secondary: Colors.green,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          onBackground: Colors.black,
          background: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ).copyWith(background: backgroundColor),
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}


  
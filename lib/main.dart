import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lifeloop/colors.dart';
import 'package:lifeloop/features/landing/screens/landing_screen.dart';
import 'package:lifeloop/firebase_options.dart';
import 'package:lifeloop/router.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        scaffoldBackgroundColor: backgroundColor, 
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        )
    ),
    onGenerateRoute: (settings) => generateRoute(settings),
    home: const LandingScreen()
    );
  }
}


  
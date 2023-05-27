import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifeloop/common/widgets/error.dart';
import 'package:lifeloop/features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name)
  {
    case LoginScreen.routeName:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

    default:
    return MaterialPageRoute(builder: (context) => const Scaffold(
      body: ErrorScreen(error: 'This page does not exist'),
    ));
  }
  
}
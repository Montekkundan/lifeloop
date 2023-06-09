import 'package:flutter/material.dart';
import 'package:lifeloop/colors.dart';
import 'package:lifeloop/common/widgets/custom_button.dart';

import '../../auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height:50
          ),
          const Text(
            'Welcome to Lifeloop',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: size.height/9
          ),
          Image.asset('assets/bg.png', height: 340, width: 340, color: tabColor,),
          SizedBox(
            height: size.height/9,
          ),
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child:  Text('Read our Privacy Policy. Tap "Agree & Continue" to accept the Terms of Service.', 
            textAlign: TextAlign.center, style: TextStyle(
              color: greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width * 0.75,
            child: CustomButton(text: 'Agree and continue', onPressed: () => navigateToLoginScreen(context)))
        ],
      )),
    );
  }
}
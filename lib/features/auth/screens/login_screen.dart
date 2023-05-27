import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:lifeloop/colors.dart';
import 'package:lifeloop/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }
    void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          const Text('Lifeloop needs to verify your phone number.'),
          const SizedBox(height: 10,),
          TextButton(onPressed: pickCountry, child: const Text('Pick country')),
          const SizedBox(height: 5,),
          Row(
            children: [
              if (country != null) Text('+${country!.phoneCode}'),
              const SizedBox(width: 10,),
              SizedBox(width: size.width *0.7,
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                )
              ))
            ],
          ),
          SizedBox(height: size.height *0.6,),
          SizedBox(
            width: 90,
            child: CustomButton(text: 'Next', onPressed: () {})
          )
        ]),
      ),
      
    );
  }
}
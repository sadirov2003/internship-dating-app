import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/getting_firstname_user_page/getting_firstname_user_screen.dart';
import 'package:flutter_auth_app/src/pages/verification_page/res.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/left_open_button_widget.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);

  static const routeName = '/verification_page';

  final defaultPinTheme = PinTheme(
    width: 36,
    height: 50,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(249, 249, 249, 1),
      border: Border.all(color: const Color.fromRGBO(222, 222, 222, 1)),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.24),
              const LeftOpenButtonWidget(),
              const SizedBox(height: 24),
              const Text(
                VerificationScreenRes.titleText,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                VerificationScreenRes.subtitleText,
                style: TextStyle(
                  color: Color.fromRGBO(150, 150, 150, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                onCompleted: (pin) {
                  Navigator.pushNamed(context, GettingFirstnameUserScreen.routeName);
                },
              ),
              const SizedBox(height: 16),
              const Text(
                VerificationScreenRes.commentText,
                style: TextStyle(
                  color: Color.fromRGBO(198, 198, 198, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

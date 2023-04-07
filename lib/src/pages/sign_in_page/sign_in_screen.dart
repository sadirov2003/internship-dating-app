import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/sign_in_page/res.dart';
import 'package:flutter_auth_app/src/pages/verification_page/verification_screen.dart';
import 'package:flutter_auth_app/src/widgets/button_widget.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class SignInScreen extends StatelessWidget {

  static const routeName = "sign_in_page";

  const SignInScreen({super.key});

  Widget _buildNumberTextField() {
    return TextFormField(
      inputFormatters: [
        MaskedInputFormatter("(000)  000  00  00"),
      ],
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(53, 53, 53, 1),
        fontSize: 16,
      ),
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(249, 249, 249, 1),
        focusColor: const Color.fromRGBO(249, 249, 249, 1),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 9.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(232, 232, 232, 1)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(232, 232, 232, 1)),
          borderRadius: BorderRadius.circular(8),
        ),
        prefix: const Text(
          '+7   ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(53, 53, 53, 1),
            fontSize: 16,
          ),
        ),
      ),

      //controller: phoneNumberTextEditingController,
      /*validator: (value) {
        print(value);
        if (value!.isEmpty) {
          return 'Заполните поля';
        } else if (value.length < 18) {
          return 'Неверный формат телефона';
        } else {
          return null;
        }
      },*/
      //autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 76),
              const Text(
                SignInScreenRes.titleText,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                SignInScreenRes.hintText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(107, 107, 107, 1),
                ),
              ),
              const SizedBox(height: 6),
              _buildNumberTextField(),
              const SizedBox(height: 28),
              const ButtonWidget(buttomName: SignInScreenRes.buttonText, route: VerificationScreen.routeName),
              const SizedBox(height: 16),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By clicking ‘Continue’, you agree\n to the ',
                      style: TextStyle(
                        color: Color.fromRGBO(173, 173, 173, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' privacy police',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Color.fromRGBO(173, 173, 173, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'user agreement',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

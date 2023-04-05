import 'package:flutter/material.dart';

import '../widgets.dart/button_widget.dart';
import '../widgets.dart/left_open_button_widget.dart';

class GettingNicknameUserScreen extends StatelessWidget {
  Widget _buildNumberTextField() {
    return TextFormField(
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(53, 53, 53, 1),
        fontSize: 16,
      ),
      keyboardType: TextInputType.text,
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
      ),
    );
  }
  
 

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) / 5) * 3;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40.24),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: LeftOpenButtonWidget(),
            ),
            const SizedBox(height: 24.24),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 4,
                  color: const Color.fromRGBO(240, 240, 240, 1),
                ),
                Container(
                  width: width,
                  height: 4,
                  color: Color.fromRGBO(138, 138, 138, 1),
                ),
              ],
            ),
            //const SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 33, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your first name is',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildNumberTextField(),
                  const SizedBox(height: 12),
                  const Text(
                    'You can use A-Z, 0-9 and _. The minimum length is 5 characters',
                    style: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Users with whom you have not started dialogue will see your nickname instead of a real name',
                    style: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 61),
                  
                  const ButtonWidget(
                      buttomName: 'Next', route: '/birthday_screen'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

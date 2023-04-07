import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';
import 'package:flutter_auth_app/src/pages/getting_birthday_user_page/getting_birthday_user_screen.dart';
import 'package:flutter_auth_app/src/pages/getting_firstname_user_page/res.dart';
import 'package:flutter_auth_app/src/widgets/button_widget.dart';

import '../../widgets/left_open_button_widget.dart';
import '../../widgets/progress_bar_widget.dart';

class GettingFirstnameUserScreen extends StatelessWidget {
  const GettingFirstnameUserScreen({Key? key}) : super(key: key);

  static const routeName = '/first_name_screen';

  Widget _buildNumberTextField() {
    return TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColor.textStyleTextFieldColor,
          fontSize: 16,
        ),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.textfieldColor,
          focusColor: AppColor.textfieldColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 9.0),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.textfieldBorderSideColor),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.textfieldBorderSideColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width) / 6;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40.24),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: LeftOpenButtonWidget(),
            ),
            const SizedBox(height: 24.24),
            ProgressBarWidget(
                progressWidth: width, width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 33, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    GettingFirstnameUserScreenRes.titleText,
                    style: TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildNumberTextField(),
                  const SizedBox(height: 12),
                  const Text(
                    GettingFirstnameUserScreenRes.commentText,
                    style: TextStyle(
                      color: AppColor.commentTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ButtonWidget(
                      buttomName: GettingFirstnameUserScreenRes.buttonText,
                      route: GettingBirthdayUserScreen.routeName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

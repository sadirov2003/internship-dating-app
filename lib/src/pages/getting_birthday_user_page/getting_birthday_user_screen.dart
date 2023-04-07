import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/getting_birthday_user_page/res.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import '../../app_color.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/left_open_button_widget.dart';
import '../../widgets/progress_bar_widget.dart';
import '../getting_nickname_page/getting_nickname_user.dart';

class GettingBirthdayUserScreen extends StatelessWidget {
  const GettingBirthdayUserScreen({super.key});

  static const routeName = '/birthday_screen';

  Widget _buildNumberTextField() {
    return TextFormField(
      inputFormatters: [
        MaskedInputFormatter("00 / 00 / 0000"),
      ],
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColor.textStyleTextFieldColor,
        fontSize: 16,
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'DD / MM / YYYY',
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColor.gettingBirthdayUserScreenHintTextColor,
          fontSize: 16,
        ),
        filled: true,
        fillColor: AppColor.textfieldColor,
        focusColor: AppColor.textfieldColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 9.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.textfieldBorderSideColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.textfieldBorderSideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) / 6) * 2;

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
            ProgressBarWidget(progressWidth: width, width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 33, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    GettingBirthdayUserScreenRes.titleText,
                    style: TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildNumberTextField(),
                  const SizedBox(height: 12),
                  const Text( // TODO перенести весь текст в Res файл
                     GettingBirthdayUserScreenRes.commentText,
                    style: TextStyle(
                      color: AppColor.commentTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ButtonWidget(
                      buttomName: GettingBirthdayUserScreenRes.buttonText, route: GettingNicknameUserScreen.routeName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

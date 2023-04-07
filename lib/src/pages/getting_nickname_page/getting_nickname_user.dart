import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/getting_nickname_page/res.dart';
import 'package:flutter_auth_app/src/pages/info_gender_page/info_gender_user.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/left_open_button_widget.dart';
import '../../widgets/progress_bar_widget.dart';

class GettingNicknameUserScreen extends StatelessWidget {
  const GettingNicknameUserScreen({Key? key}) : super(key: key);

  static const routeName = '/nickname_screen';

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
    final width = ((MediaQuery.of(context).size.width) / 6) * 3;

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
            ProgressBarWidget(progressWidth: width, width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 33, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    GettingNicknameUserScreenRes.titleText,
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
                     GettingNicknameUserScreenRes.commentText1,
                    style: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    GettingNicknameUserScreenRes.commentText2,
                    style: TextStyle(
                      color: Color.fromRGBO(173, 173, 173, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 61),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                    ),
                    minLeadingWidth: 16,
                    contentPadding: EdgeInsets.only(left: (MediaQuery.of(context).size.width)/8),
                    title: const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        GettingNicknameUserScreenRes.settingText,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  const ButtonWidget(
                      buttomName: GettingNicknameUserScreenRes.buttonText, route: InfoGenderUser.routeName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

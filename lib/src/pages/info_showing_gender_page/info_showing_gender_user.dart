import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';
import 'package:flutter_auth_app/src/pages/info_showing_gender_page/res.dart';
import 'package:flutter_auth_app/src/pages/start_page/start_screen.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/left_open_button_widget.dart';
import '../../widgets/progress_bar_widget.dart';

class InfoShowingGenderUser extends StatelessWidget {
  const InfoShowingGenderUser({super.key});

  static const routeName = '/showing_gender_user';

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) / 6) * 5;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
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
                        InfoShowingGenderScreenRes.titleText,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 38),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.zero,
                          width: MediaQuery.of(context).size.width,
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color.fromRGBO(169, 169, 169, 1),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              InfoShowingGenderScreenRes.choiceGenderWomanText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(169, 169, 169, 1)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.zero,
                          width: MediaQuery.of(context).size.width,
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color.fromRGBO(169, 169, 169, 1),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              InfoShowingGenderScreenRes.choiceGenderManText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(169, 169, 169, 1)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.zero,
                          width: MediaQuery.of(context).size.width,
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              InfoShowingGenderScreenRes.choiceGenderAllText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (MediaQuery.of(context).size.height)/2.4,
                      ),
                      const ButtonWidget(
                          buttomName: InfoShowingGenderScreenRes.buttonText, route: StartScreenPage.routeName),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';
import 'package:flutter_auth_app/src/pages/info_gender_page/res.dart';
import 'package:flutter_auth_app/src/pages/info_showing_gender_page/info_showing_gender_user.dart';
import 'package:flutter_auth_app/src/pages/store_page/store_page.dart';
import 'package:get_it/get_it.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/left_open_button_widget.dart';
import '../../widgets/progress_bar_widget.dart';

class InfoGenderUser extends StatelessWidget {
  InfoGenderUser({Key? key}) : super(key: key);

  static const routeName = '/info_gender_screen';

  StorePage storePage = GetIt.instance<StorePage>();

  Widget choiceGenderButton(BuildContext context, String gender, Color color) {
    return GestureDetector(
      onTap: () {
        storePage.gender = gender;
      },
      child: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: color,
          ),
        ),
        child: Center(
          child: Text(
            gender,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) / 6) * 4;

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
                ProgressBarWidget(
                    progressWidth: width,
                    width: MediaQuery.of(context).size.width),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 33, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        InfoGenderScreenRes.titleText,
                        style: TextStyle(
                          color: AppColor.blackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 19),
                      const Text(
                        InfoGenderScreenRes.commentText,
                        style: TextStyle(
                          color: AppColor.commentTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      choiceGenderButton(
                        context,
                        InfoGenderScreenRes.choiceGenderWomanText,
                        AppColor.blackColor,
                      ),
                      const SizedBox(height: 10),
                      choiceGenderButton(
                        context,
                        InfoGenderScreenRes.choiceGenderManText,
                        AppColor.inactiveButtonColor,
                      ),
                      SizedBox(
                        height: (MediaQuery.of(context).size.height) / 2.8,
                      ),
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
                                  color: AppColor.blackColor,
                                ),
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 15,
                                color: AppColor.blackColor,
                              ),
                            ),
                          ),
                        ),
                        minLeadingWidth: 16,
                        contentPadding: EdgeInsets.only(
                            left: (MediaQuery.of(context).size.width) / 8),
                        title: const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            InfoGenderScreenRes.settingText,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColor.blackColor,
                            ),
                          ),
                        ),
                      ),
                      const ButtonWidget(
                          buttomName: InfoGenderScreenRes.buttonText,
                          route: InfoShowingGenderUser.routeName),
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

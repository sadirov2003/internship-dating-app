import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/info_gender_page/res.dart';
import 'package:get_it/get_it.dart';

import '../app_color.dart';
import '../pages/info_showing_gender_page/res.dart';
import '../pages/store_page/store_page.dart';

class ChoiceGenderButton extends StatelessWidget {
  final String gender;

  ChoiceGenderButton({Key? key, required this.gender}) : super(key: key);

  StorePage storePage = GetIt.instance<StorePage>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColor.inactiveButtonColor,
          ),
        ),
        child: const Center(
          child: Text(
            InfoShowingGenderScreenRes.choiceGenderWomanText,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: AppColor.inactiveButtonColor),
          ),
        ),
      ),
    );
  }
}

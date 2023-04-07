import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';

Widget ProgressBarWidget({required double progressWidth, required double width}) {
  return Stack(
    children: [
      Container(
        width: width,
        height: 4,
        color: AppColor.progressBarColor1,
      ),
      Container(
        width: progressWidth,
        height: 4,
        color: AppColor.progressBarColor2,
      ),
    ],
  );
}

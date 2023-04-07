import 'package:flutter/material.dart';

Widget ProgressBarWidget({required double progressWidth, required double width}) {
  return Stack(
    // TODO Посмотреть animated container
    children: [
      Container(
        width: width,
        height: 4,
        color: const Color.fromRGBO(240, 240, 240, 1),
      ),
      Container(
        width: progressWidth,
        height: 4,
        color: Color.fromRGBO(
            138, 138, 138, 1), // TODO перенести в константный файл все цвета
      ),
    ],
  );
}

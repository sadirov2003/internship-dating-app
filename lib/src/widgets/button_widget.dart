import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';

class ButtonWidget extends StatelessWidget {
  final String buttomName;
  final String route;

  const ButtonWidget({
    required this.buttomName,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      height: 49,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.buttonColor,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(
            buttomName,
            style: const TextStyle(
              color: AppColor.buttonTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

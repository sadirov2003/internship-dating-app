import 'package:flutter/material.dart';

class LeftOpenButtonWidget extends StatelessWidget {
  const LeftOpenButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child:  Icon(
        color: Colors.black87,
        Icons.arrow_back_ios_outlined,
      ),
    );
  }
}

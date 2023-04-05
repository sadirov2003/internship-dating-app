import 'package:flutter/material.dart';

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
                  const Color.fromRGBO(144, 144, 144, 1))),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(
            buttomName,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

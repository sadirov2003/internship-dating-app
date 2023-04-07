import 'package:flutter/material.dart';

import '../pages/start_page/res.dart';


class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: InkWell(
        onTap: () {},
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 1),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      minLeadingWidth: 16,
      title: const Text(
         StartScreenRes.titleText,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
      minVerticalPadding: 14,
      subtitle: const Text(
        StartScreenRes.subtitleText,
        style: TextStyle(
          fontFamily: "Manrope",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color.fromRGBO(116, 116, 116, 1),
        ),
      ),
    );
  }
}

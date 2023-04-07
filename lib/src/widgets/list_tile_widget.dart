import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';

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
            color: AppColor.circleButtonColor,
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
          color: AppColor.blackColor,
        ),
      ),
      minVerticalPadding: 14,
      subtitle: const Text(
        StartScreenRes.subtitleText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColor.startScreencommentTextColor,
        ),
      ),
    );
  }
}

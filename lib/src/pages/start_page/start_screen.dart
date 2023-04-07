import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/start_page/res.dart';
import 'package:flutter_auth_app/src/widgets/button_widget.dart';
import 'package:flutter_auth_app/src/widgets/list_tile_widget.dart';

import '../../widgets/small_button_widget.dart';
import '../sign_in_page/sign_in_screen.dart';

class StartScreenPage extends StatelessWidget {
  const StartScreenPage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 45),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                   StartScreenRes.headerText,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                   StartScreenRes.commentText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(116, 116, 116, 1),
                  ),
                ),
                const SizedBox(height: 54),
                const ListTileWidget(),
                const ListTileWidget(),
                const ListTileWidget(),
                const SizedBox(height: 55),
                const ButtonWidget(buttomName: StartScreenRes.buttonText, route: SignInScreen.routeName),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallButtonWidget(),
                    SmallButtonWidget(),
                    SmallButtonWidget(),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/sign_in_screen.dart';
import 'package:flutter_auth_app/src/widgets.dart/list_tile_widget.dart';

import '../widgets.dart/small_button_widget.dart';

class StartScreenPage extends StatelessWidget {
  const StartScreenPage({super.key});

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
                  'Welcom to app name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Here you can',
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
                Container(
                  margin: EdgeInsets.zero,
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          // elevation: MaterialStateProperty.all(15),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(144, 144, 144, 1))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignInScreen();
                        }));
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
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

import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/info_gender_user.dart';
import 'package:flutter_auth_app/src/pages/sign_in_screen.dart';
import 'package:flutter_auth_app/src/pages/verification_screen.dart';

import 'src/pages/getting_birthday_user_screen.dart';
import 'src/pages/getting_firstname_user_screen.dart';
import 'src/pages/getting_nickname_user.dart';
import 'src/pages/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Manrope",
      ),
      routes: {
        '/': (context) => StartScreenPage(),
        SignInScreen.routeName: (context) => SignInScreen(),
        // TODO перенести в статичную переменную
        '/verification_page': (context) => VerificationScreen(),
        '/first_name_screen': (context) => GettingFirstnameUserScreen(),
        '/birthday_screen': (context) => GettingBirthdayUserScreen(),
        '/nickname_screen': (context) => GettingNicknameUserScreen(),
        '/info_gender_screen': (context) => InfoGenderUser(),
      },
      initialRoute: '/first_name_screen',
    );
  }
}

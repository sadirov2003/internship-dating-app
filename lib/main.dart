import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/pages/info_gender_page/info_gender_user.dart';
import 'package:flutter_auth_app/src/pages/info_showing_gender_page/info_showing_gender_user.dart';
import 'package:flutter_auth_app/src/pages/sign_in_page/sign_in_screen.dart';
import 'package:flutter_auth_app/src/pages/start_page/start_screen.dart';
import 'package:flutter_auth_app/src/pages/verification_page/verification_screen.dart';

import 'src/pages/getting_birthday_user_page/getting_birthday_user_screen.dart';
import 'src/pages/getting_firstname_user_page/getting_firstname_user_screen.dart';
import 'src/pages/getting_nickname_page/getting_nickname_user.dart';

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
        StartScreenPage.routeName: (context) => const StartScreenPage(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        VerificationScreen.routeName: (context) => VerificationScreen(),
        GettingFirstnameUserScreen.routeName: (context) => const GettingFirstnameUserScreen(),
        GettingBirthdayUserScreen.routeName: (context) => const GettingBirthdayUserScreen(),
        GettingNicknameUserScreen.routeName: (context) => const  GettingNicknameUserScreen(),
        InfoGenderUser.routeName: (context) => const InfoGenderUser(),
        InfoShowingGenderUser.routeName: (context) => const InfoShowingGenderUser(),
      },
      //initialRoute: '/first_name_screen',
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets.dart/left_open_button_widget.dart';

class InfoGenderUser extends StatelessWidget {
  const  InfoGenderUser({super.key});

  @override
  Widget build(BuildContext context) {
    final width = ((MediaQuery.of(context).size.width) / 5) * 4;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.24),
              LeftOpenButtonWidget(),
              SizedBox(height: 24.24),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                    color: const Color.fromRGBO(240, 240, 240, 1),
                  ),
                  Container(
                    width: width,
                    height: 4,
                    color: Color.fromRGBO(138, 138, 138, 1),
                  ),

                  /* Divider(
                    thickness: 4,
                    color: Color.fromRGBO(240, 240, 240, 1),
                  ),
                  Divider(
                    color: Color.fromRGBO(138, 138, 138, 1),
                    thickness: 4,
                    
                    endIndent: width,
                  ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

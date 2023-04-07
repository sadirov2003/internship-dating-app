import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/app_color.dart';

class SmallButtonWidget extends StatelessWidget {
  const SmallButtonWidget({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 95.67,
      decoration: BoxDecoration(
        color: AppColor.startScreenContainerColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: AppColor.circleButtonColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: InkWell(
            onTap: (){},
            
          ),
        ),
      ),
    );
  }
}

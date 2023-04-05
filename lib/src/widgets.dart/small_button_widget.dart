import 'package:flutter/material.dart';

class SmallButtonWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 95.67,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 1),
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

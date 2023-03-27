import 'package:flutter/material.dart';

class ReusableCardChild extends StatelessWidget {
  ReusableCardChild({this.icon, this.lable});
  final IconData? icon;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            lable!,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class iconj extends StatelessWidget {
  iconj({this.icon,this.gender});
  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(gender,style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98)
        ),)
      ],
    );
  }
}
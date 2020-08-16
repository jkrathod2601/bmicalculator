import 'package:flutter/material.dart';

class reuse extends StatelessWidget {
  reuse({this.cardchild,this.color1});
  final Widget cardchild;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin:EdgeInsets.all(15),
      decoration: BoxDecoration(
          color:color1,
          borderRadius:BorderRadius.circular(10)
      ),
      height: 200,
      width: 170,
    );
  }
}

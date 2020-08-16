import 'package:flutter/material.dart';

class  second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Text("YOUR ANSWER IS",style: TextStyle(
        color: Colors.white
      ),),
    ) ;
  }
}

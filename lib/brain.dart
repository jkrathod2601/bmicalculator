import 'package:flutter/material.dart';
import 'dart:math';
class cal
{
  cal({this.height,this.weight});
  final int height;
  final int weight;
  double BMI;

  String bmians()
  {
     BMI= (weight)/(pow(height/100,2));
    return BMI.toStringAsFixed(2);
  }

  String getreuslt()
  {
    if(BMI>=25)
      {
        return "OVER-WEIGHT";
      }else if(BMI>18.5)
        {
          return "NORMAL";
        }else {
      return "UNDER-WEIGHT";
    }
  }
  String getre()
  {
    if(BMI>=25)
    {
      return "YOU HAVE A HEIGHER THEN NORMAL BODY WEIGHT,TRY TO EXERCISE MORE.";
    }else if(BMI>18.5)
    {
      return "YOU HAVE A NORMAL BODY WEIGHT,GOOD JOB.";
    }else {
      return "YOU HAVE A LOWER THAN NORMAL BODY WEIGHT ,YOU CAN EAT MORE.";
    }
  }

}

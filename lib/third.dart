import 'package:bmi_calculator/reuse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class  third extends StatelessWidget {
  third({@required this.t,@required this.t1,@required this.t2});
  final String t;
  final String t1;
  final String t2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text("YOUR ANSWER IS",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Text(t,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  Text(t1,style: TextStyle(
                    color: Colors.white,
                      fontSize: 70,
                      fontWeight:FontWeight.w900
                  ),),
                  Text(t2,style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)

                ],
              ),
            margin:EdgeInsets.all(15),
            decoration: BoxDecoration(
            color:Color(0xFF1D1E33),
            borderRadius:BorderRadius.circular(10)
            ),
            height: 170,
            width: double.infinity,
          )
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context,'/first');
              },
              child: Container(
                child: Center(
                  child: Text("RE-USE CALCULATOR",style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold
                  ),),
                ),
                width: double.infinity,
                height: 100,
                margin:EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color:Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          )
          ],
      )
    ) ;
  }
}

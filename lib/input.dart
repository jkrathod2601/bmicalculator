import 'package:bmi_calculator/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse.dart';
import 'iconj.dart';
import 'brain.dart';

const incolor=Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight=60;
  int age=19;
  Color malecolor = Color(0xFF1D1E33);
  Color femalecolor = Color(0xFF1D1E33);
  void update(int i)
  {
    if(i==1)
      {
        if(malecolor==Color(0xFF1D1E33))
          {
            malecolor=incolor;
            femalecolor=Color(0xFF1D1E33);
          }else
            {
              malecolor=Color(0xFF1D1E33);
            }
      }
    if(i==0)
    {
      if(femalecolor==Color(0xFF1D1E33))
      {
        femalecolor=incolor;
        malecolor=Color(0xFF1D1E33);
      }else
      {
        femalecolor=Color(0xFF1D1E33);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Center(
            child: Text('BMI CALCULATOR',
              style: TextStyle(
                  color: Colors.white
              ),),
          ),
        ),
        body:Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                           setState(() {
                             update(1);
                           });
                        },
                        child: reuse(
                          color1: malecolor,
                          cardchild: iconj(
                            icon:FontAwesomeIcons.mars,
                            gender: 'MALE'
                          )
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            update(0);
                          });
                        },
                        child: reuse(
                          color1: femalecolor,
                          cardchild: iconj(
                            icon:FontAwesomeIcons.venus,
                            gender: 'FEMALE'
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child:reuse(
                          cardchild: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 4,
                              ),
                              Text("HEIGHT",style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E98),
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline:TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    height.toString(),
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight:FontWeight.w900
                                    ),
                                  ),
                                  Text('cm',style: TextStyle(
                                    color: Color(0xFF8D8E98)
                                  ),)
                                ],
                              ),
                             SliderTheme(
                               data:SliderTheme.of(context).copyWith(
                                 thumbShape:
                                   RoundSliderThumbShape(enabledThumbRadius: 15),
                                 overlayShape:RoundSliderOverlayShape(overlayRadius: 15)
                               ),
                               child: Slider(
                                 value: height.toDouble(),
                                 max: 220,
                                 min: 120,
                                 activeColor: Color(0xFFEB1555),
                                 inactiveColor: Color(0xFF8D8E98),
                                 onChanged: (double newvalue){
                                   setState(() {
                                     height=newvalue.toInt();
                                   });
                                 },
                               ),
                             )
                            ],

                          ),
                          color1: Color(0xFF1D1E33),
                        )
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: reuse(
                        color1: Color(0xFF1D1E33),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT",style: TextStyle(
                                color: Color(0xFF8D8E98)
                            ),),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight:FontWeight.w900
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'jay',
                                  backgroundColor:Color(0xFF4C4F5E),
                                  onPressed: (){
                                    setState(() {
                                      weight=weight-1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: 'jay1',
                                  backgroundColor:Color(0xFF4C4F5E),
                                  onPressed: (){
                                    setState(() {
                                      weight=weight+1;
                                    });
                                  },
                                  child: Icon(
                                      Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                                ],
                            )

                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: reuse(
                        color1: Color(0xFF1D1E33),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",style: TextStyle(
                                color: Color(0xFF8D8E98)
                            ),),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight:FontWeight.w900
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'jay3',
                                  backgroundColor:Color(0xFF4C4F5E),
                                  onPressed: (){
                                    setState(() {
                                      age=age-1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: 'jay4',
                                  backgroundColor:Color(0xFF4C4F5E),
                                  onPressed: (){
                                    setState(() {
                                      age=age+1;
                                    });
                                  },
                                  child: Icon(
                                      Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      )
                    ),

                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  cal jay =cal(height: height,weight: weight);
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context)=>third(
                        t:jay.bmians(),
                        t1:jay.getreuslt(),
                        t2:jay.getre()
                    )
                  ));
                },
                child: Container(
                  child: Center(
                    child: Text("CALCULATE YOUR BMI",style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold
                    ),),
                  ),
                  width: double.infinity,
                  height: 80,
                  margin:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color:Color(0xFFEB1555),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              )
            ],
          ),

    );
  }
}





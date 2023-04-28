import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../Colors.dart';
import '../StudentHome.dart';

class StudentClassHome extends StatefulWidget {
  const StudentClassHome({Key? key}) : super(key: key);

  @override
  State<StudentClassHome> createState() => _StudentClassHomeState();
}

class _StudentClassHomeState extends State<StudentClassHome> {
  double presentDays =80;
  double totalDays=100;
  @override
  Widget build(BuildContext context) {
    double percentFraction = (presentDays/totalDays);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: CircularPercentIndicator(
                    radius: 120,
                    lineWidth: 10,
                    percent: percentFraction,
                    progressColor: percentFraction > 0.70 ? green :red,
                    backgroundColor: grey6,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text((percentFraction*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    animateFromLastPercent: true ,
                    animation: true,
                    animationDuration: 1000,
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(

                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Computer Network",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,)
                      )),
                ),
                SizedBox(height: 15),
                Center(child: Text(presentDays.toInt().toString()+"/"+totalDays.toInt().toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
                SizedBox(height: 15),
                Card(
                  child:ListTile(
                    title: Text("Attendance Today"),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,0,10),
                      child: Text("Present",style: TextStyle(fontSize: 25,color: Colors.black),),
                    ),
                    trailing: FaIcon(FontAwesomeIcons.solidCircleCheck,color: green,size: 35,),
                  )
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Statistics",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearPercentIndicator(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Class Average",style: TextStyle(fontSize: 16),),
                      ),
                      lineHeight: 35,
                      percent: 0.4,
                      progressColor: Colors.lightBlueAccent,
                      backgroundColor: grey5,
                      animation: true,
                      linearStrokeCap: LinearStrokeCap.butt,
                      center: Text((0.4*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}


import 'package:college_app/StudentComponent/AssignementListTile.dart';
import 'package:college_app/StudentComponent/messageListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math';
import '../Colors.dart';
import 'package:flutter/painting.dart';



class StudentHome extends StatefulWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  double percentageValue = 0.75;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,20,10,10),
                  child: Text("Attendance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      children: [
                        AttendanceIndicator("Engineering Economics",80,100),
                        AttendanceIndicator("Computer Network",50,100),
                        AttendanceIndicator("Engineering Economics",75,100),
                        AttendanceIndicator("Engineering Economics",10,100),
                        AttendanceIndicator("Engineering Economics",100,100),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 10),
          Container(
            width: 800,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text("Classes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,

                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, '/StudentClassHomePage');},
                            child: ClassBox("Compter Network",1),
                        ),
                        ClassBox("Engineering Economics",0),
                        ClassBox("Multimedia",0),
                        ClassBox("Programming language",1),
                        ClassBox("Operating System",5),
                      ],
                    )),

              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 800,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Latest assignment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                Text("View all",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: blue),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            AssignmentListTile("Do This Question", "Engineering Economics", "6th Aug", false),
                            AssignmentListTile("Do This Question", "Engineering Economics", "6th Aug", true),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: 800,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Latest message",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Text("View all",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: blue),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          messageListTile("No Class Today", "Engineering Economics", "2 mins ago", true),
                          messageListTile("No Class Today", "OOSD", "2 hours ago", false),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


Widget AttendanceIndicator(String className ,double presentDays ,double totalDays ){
  double percentFraction = (presentDays/totalDays);
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        CircularPercentIndicator(
          radius: 100,
          lineWidth: 8,
          percent: percentFraction,
          progressColor: percentFraction > 0.70 ? green :red,
          backgroundColor: grey6,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text((percentFraction*100).toInt().toString()+"%",style: TextStyle(fontSize: 20),),
          animateFromLastPercent: true ,
          animation: true,
          animationDuration: 1000,
        ),
        SizedBox(height: 10),
        Container(
          width: 90,
            child: Align(
              alignment: Alignment.center,
                child: Text(className,style: TextStyle(fontSize: 14,),textAlign: TextAlign.center,)
            )),
        SizedBox(height: 10),
      ],
    ),
  );



}

Widget ClassBox(String className, int numberOfNotification){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 15),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            blue,
            Colors.blue,
            //Colors.primaries[Random().nextInt(Colors.primaries.length)],
            //Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
          title: Row(
            children: [
              Text(className,style: TextStyle(fontSize:18,fontWeight: FontWeight.w500,color: Colors.white),),
              NotificationIndicator(numberOfNotification),

            ],
          ),
      trailing: FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,),
      ),


    ),
  );
}

Widget NotificationIndicator(int numberOfNotification){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: numberOfNotification == 0 ? Container():Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: red,
      ),
      height: 25,
      width: 25,
      child: Center(child: Text(numberOfNotification.toString(),style: TextStyle(color: white),)),

    ),
  );
}
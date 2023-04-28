import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Colors.dart';
class EventNotificationList extends StatefulWidget {
  const EventNotificationList({Key? key}) : super(key: key);

  @override
  State<EventNotificationList> createState() => _EventNotificationListState();
}

class _EventNotificationListState extends State<EventNotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor: blue,
        elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: Container(

          child: ListView(
            children: [
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("To:BESE_2018",style: GoogleFonts.manrope(fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text("This is To Notify That the last fee submission date is tommorrow",style: GoogleFonts.manrope(color: grey1,fontSize: 14),),
                      SizedBox(height: 8,),
                      Text("3 days ago"),
                      SizedBox(height: 8,),
                    ],
                  ),
                  onTap: (){},

                ),
              ),
              SizedBox(height: 20),



            ],
          ),
        ),
      ),
    );
  }
}


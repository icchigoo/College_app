import 'package:flutter/material.dart';

import '../../Colors.dart';

class EventNotification extends StatefulWidget {
  const EventNotification({Key? key}) : super(key: key);

  @override
  State<EventNotification> createState() => _EventNotificationState();
}

class _EventNotificationState extends State<EventNotification> {
  @override
  _goToEventNotificationList(){
    Navigator.of(context).pushNamed('/Show_Recent_Notification');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-ACADEMIA',style: TextStyle(fontFamily: 'Aerial',color: white),),
        backgroundColor:blue,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        color:  lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Text('Batch Name :',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: grey5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'eg: BESE_2018  ',
                  hintStyle: TextStyle(color: grey3),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Text('Message:',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: grey5),
                borderRadius: BorderRadius.circular(5),

              ),
              child: TextFormField(
                minLines: 5,
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10,10,0,0),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'Message About Event....',
                  hintStyle: TextStyle(color: grey3),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: (){},
                child: Text('Send Message')
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: green,
                ),
                onPressed: (){_goToEventNotificationList();},
                child: Text("Show Recently Sent Notification" ,style: TextStyle(fontSize: 16),)
            ),


          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class StudentClassNotes extends StatefulWidget {
  const StudentClassNotes({Key? key}) : super(key: key);

  @override
  State<StudentClassNotes> createState() => _StudentClassNotesState();
}

class _StudentClassNotesState extends State<StudentClassNotes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(Icons.download),
                  title:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Chapter 1 Note"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Sent by : Man Bahadur"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(Icons.download),
                  title:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Chapter 1 Note"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Sent by : Man Bahadur"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(Icons.download),
                  title:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Chapter 1 Note"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Sent by : Man Bahadur"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(Icons.download),
                  title:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Chapter 1 Note"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Sent by : Man Bahadur"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: ListTile(
                  tileColor: Colors.white,
                  trailing: Icon(Icons.download),
                  title:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Chapter 1 Note"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Sent by : Man Bahadur"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

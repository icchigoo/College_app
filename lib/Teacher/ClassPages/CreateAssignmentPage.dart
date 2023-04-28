
import 'package:college_app/AdminComponents/DefaultTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Colors.dart';

class CreateAssignmentPage extends StatefulWidget {
  const CreateAssignmentPage({Key? key}) : super(key: key);

  @override
  State<CreateAssignmentPage> createState() => _CreateAssignmentPageState();
}

class _CreateAssignmentPageState extends State<CreateAssignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Assignment'),
        backgroundColor: blue,
        elevation: 0,
        excludeHeaderSemantics: true,
        foregroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Assignment title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                DefaultTextField(hintText: "Title"),
                SizedBox(height: 10,),
                Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: grey5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                    child: TextField(
                      maxLines: 5,
                      minLines: 5,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10,0,0,0),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintText: "Description",
                        hintStyle: TextStyle(color: grey3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Due Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                DefaultTextField(hintText: "MM/DD/YYYY"),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: green,
                  ),
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.upload,color: white,size: 30,),
                    title: Text("Upload File",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: white),),
                    subtitle: Text("Attach file with the assignment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: white),),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Submit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

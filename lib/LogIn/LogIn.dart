import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../AdminComponents/Admin.dart';
import '../Student/StudentHome.dart';
import '../StudentComponent/Student.dart';
import '../Teacher/Teacher.dart';
import '../Widget/DefaultTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String error=" ";
  String role="";
  bool loading= false;
  final sliderController = CarouselController();
  int activeIndex=0;
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final Images=[
    'assets/login/Student.png',
    'assets/login/Teacher.png',
    'assets/login/Admin.png',
  ];
  validateUser() async{

    var response;
    setState(() {
      if(activeIndex==0){
        role="Student";
      }
      if(activeIndex==1){
        role="Teacher";
      }
      if(activeIndex==2){
        role="Admin";
      }

      loading=true;
    });
    try {
      setState(() {
        loading = true;
      });
      response = await http.post(
          Uri.parse("https://jsonplaceholder.typicode.com/posts"),
          body: {
            "role" : role,
            "email": username.text,
            "password": password.text,
          }
      );
      if(response.statusCode == 201){
        print("Logged in Successfully");
        // var data = jsonDecode(response.body.toString());
        // print(data);
        // print(data["token"]);
        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        sharedPreferences.setString('username', username.text);
        // sharedPreferences.setString('token', data["token"]);
        if(activeIndex==0){
          Get.offAll(Student());
        }
        if(activeIndex==1){
          Get.offAll(Teacher());
        }
        if(activeIndex==2){
          Get.offAll(Admin());
        }


      }
      else{
        var data = jsonDecode(response.body.toString());
        print(data);
        print("Response Status is");
        print(response.statusCode );
        if(data["Message"] != null) {
          setState(() {
            error = data["Message"];
            loading = false;
          });
        }
        if( data["detail"] != null) {
          setState(() {
            error = data["detail"];
            loading = false;
          });
        }
        if(data["Message"] == null && data["detail"] == null){
          setState(() {
            error = "Email is not registered ";
            loading = false;
          });

        }
      }
      setState(() {
        loading = false;
      });
    }
    catch(e){
      setState(() {
        print(e);
        error = e.toString();
        loading = false;
      });
    }

  }

  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: activeIndex==0 ? Colors.grey.shade300 : activeIndex==1 ? lightBlue : Colors.greenAccent.shade100 ,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  CarouselSlider.builder(
                    carouselController: sliderController,
                      options: CarouselOptions(
                          height: 150,
                      onPageChanged: (newIndex,reason){
                        setState(() {
                          activeIndex =newIndex;
                          for(int index=0; index< isSelected.length ;index++){
                            if(index == newIndex){
                              isSelected[index] =true;
                            }
                            else{
                              isSelected[index] =false;
                            }
                          }
                        });
                      }),
                      itemCount: 3,
                      itemBuilder: (context,index,realIndex){
                        final Image = Images[index];
                        return buildImage(Image,index);
                      },
                  ),
                  SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hello Again!",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 52
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome! You've been missed",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ToggleButtons(
                          isSelected: isSelected,
                            children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0),
                            child: Text("Student"),
                          ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                                child: Text("Teacher"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                                child: Text("Admin"),
                              ),
                        ],
                        onPressed:(int newIndex){
                            setState(() {
                              for(int index=0; index< isSelected.length ;index++){
                                if(index == newIndex){
                                  isSelected[index] =true;
                                  sliderController.jumpToPage(index);
                                }
                                else{
                                  isSelected[index] =false;
                                }
                              }

                            });

                        },
                          color: Colors.black,
                          selectedColor: Colors.white,
                          splashColor: green,
                          fillColor: green,
                          borderColor: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(12),
                          right:Radius.circular(12), ),
                        ),

                      ],
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextField("Enter Your Username",username),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordDefaultTextField("Enter Your Password",password),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(error,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){validateUser();},
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: blue,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:loading ? Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,20,0),
                          child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: white,
                              )),
                        ):Text("Login",
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),),
                      Text("Register Now",
                        style: TextStyle(
                          color: blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                    ],
                  )

                ],

              ),
            ),
          ),
        ),
      )
    );
  }
}

Widget buildImage(String image , int index) {
  return Container(
    child: Column(
      children: [
        Container(
          height: 100,
            child: Image.asset(image)),
        SizedBox(height: 10,),
        Text(index==0 ?"Student": index==1?"Teacher":"Admin",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),),
      ],
    )

  );
}
import 'package:flutter/material.dart';
import 'package:vadmin/editpages/addlanguage.dart';
import 'package:vadmin/editpages/addstars.dart';
import 'package:vadmin/editpages/addvideodetails.dart';
import 'package:vadmin/login.dart';

class adminpage extends StatefulWidget {
  const adminpage({Key? key}) : super(key: key);

  @override
  State<adminpage> createState() => _adminpageState();
}

class _adminpageState extends State<adminpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset('assets/v1.JPG'),
          leadingWidth: 70,
          title: Text(
            'Vetri',
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.logout,
                size: 30,
                color: Colors.white70,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: AlertDialog(
                          backgroundColor: Colors.black,
                          title: Text(
                            "Login Out",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "No",
                                  style:
                                      TextStyle(fontSize: 16, color: Colors.blue),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => adminlogin()));
                                },
                                child: Text(
                                  "Yes",
                                  style:
                                      TextStyle(fontSize: 16, color: Colors.blue),
                                ))
                          ],
                        ),
                      );
                    });
              },
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addvideodetails()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          SizedBox(height:100,
                              child: Image(image: AssetImage('assets/video.png'))),
                          Text('Add Video',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addlanguage()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          SizedBox(height:90,
                              child: Image(image: AssetImage('assets/lan.png'))),
                          Text('     Add \n Language',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>addstars()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.grey.shade300,
                      child: Container(
                        height: 150,
                        width: 150,
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height:90,
                                child: Image(image: AssetImage('assets/s.png'))),
                            SizedBox(height: 10,),
                            Text('Add Stars',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: (){},
              //       child: Container(
              //         height: 150,
              //         width: 150,
              //         color: Colors.grey.shade300,
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ],
      ),
    ));
  }
}

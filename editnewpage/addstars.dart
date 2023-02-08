
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class addstars extends StatefulWidget {
  const addstars({Key? key}) : super(key: key);

  @override
  State<addstars> createState() => _addstarsState();
}

class _addstarsState extends State<addstars> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Add Stars",style:TextStyle(color: Colors.white70),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white70,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
          body: Column(children: [
            SizedBox(height: 50,),
            Row(children: [
              SizedBox(width: 20,),
              Row(children: [
                Column(
                  children: [
                    Text('Name',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text('Image',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  ],
                )
              ],),
              SizedBox(width: 20,),
              Row(children: [
                Column(
                  children: [
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height: 50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  ],
                )
              ],),
              SizedBox(width: 20,),
              Row(children: [
                Column(
                  children: [
                    Container(
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade300,
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              )),
                        )),
                    SizedBox(height: 20,),
                    Container(
                        height: 50,
                        width: 200,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)),
                        onPressed: () {  }, child: Row(children: [
                        Text('Upload Image',style: TextStyle(
                          fontSize: 16, color: Colors.black),),
                        Spacer(),
                        Icon(Icons.upload,color: Colors.black,)
                      ],),),

                    ),
                  ],
                )
              ],),
            ],),
            SizedBox(height: 40,),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Save',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
              ),
            ),
          ],),
    ));
  }
}

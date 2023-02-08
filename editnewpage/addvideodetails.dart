import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class addvideodetails extends StatefulWidget {
  const addvideodetails({Key? key}) : super(key: key);

  @override
  State<addvideodetails> createState() => _addvideodetailsState();
}

class _addvideodetailsState extends State<addvideodetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text("Add Video",style:TextStyle(color: Colors.white70),),
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
              SizedBox(width: 14,),
              Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Video Title',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text('Discription',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height:50,),
                    Text('Type',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height:50,),
                    Text('Image',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height:50,),
                    Text('Duration',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height:50,),
                    Text('Age restriction',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height:50,),
                    Text('Language',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),

                  ],
                )
              ],),
              SizedBox(width: 15,),
              Row(children: [
                Column(
                  children: [
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height: 50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),
                    SizedBox(height:50,),
                    Text(':',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500,fontSize: 16),),

                  ],
                )
              ],),
              SizedBox(width: 15,),
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
                    Container(height: 50, width: 200,
                       color: Colors.grey.shade300,
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 2),
                            child:
                            DropDownTextField(
                              clearOption: true,
                              enableSearch: true,
                              clearIconProperty: IconProperty(
                                  color: Colors.green),
                              searchDecoration: const InputDecoration(
                                  hintText: "Select Type"),

                              dropDownItemCount: 4,
                              dropDownList: [
                                DropDownValueModel(
                                    name: 'Movie', value: 'value1'),
                                DropDownValueModel(
                                    name: 'Song', value: 'value2'),

                              ],
                              onChanged: (val) {},
                            )
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
                    SizedBox(height: 20,),
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
                    Container(height: 50, width: 200,
                        color: Colors.grey.shade300,
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 2),
                            child:
                            DropDownTextField(
                              clearOption: true,
                              enableSearch: true,
                              clearIconProperty: IconProperty(
                                  color: Colors.green),
                              searchDecoration: const InputDecoration(
                                  hintText: "Select Language"),

                              dropDownItemCount: 4,
                              dropDownList: [
                                DropDownValueModel(
                                    name: 'Tamil', value: 'value1'),
                                DropDownValueModel(
                                    name: 'English', value: 'value2'),

                              ],
                              onChanged: (val) {},
                            )
                        )),

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

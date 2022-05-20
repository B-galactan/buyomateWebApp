import 'dart:io';

import 'package:flutter/material.dart';

class MyRadioWidget extends StatefulWidget {
  const MyRadioWidget({Key? key}) : super(key: key);

  @override
  State<MyRadioWidget> createState() => _MyRadioWidgetState();
}

class _MyRadioWidgetState extends State<MyRadioWidget> {
  bool _value = false;
  dynamic val = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
                ListTile(
                  title: const Text("Default Sorting" , style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 1,
                            groupValue: val,
                            onChanged: (value){      
                              setState(() {
                                val = value;
                              }); 
                            },
                               activeColor: Colors.blue,                    
                   ),
                 ),
                const Divider( thickness: 1, color: Color.fromARGB(76, 255, 255, 255),),
                ListTile(
                  title: const Text("Sort by popularity" , style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 2,
                            groupValue: val,
                            onChanged: (value){
                              setState(() {
                                val = value;
                              });                   
                            },
                            activeColor: Colors.blue,                         
                   ),
                ),
                const Divider( thickness: 1, color: Color.fromARGB(76, 255, 255, 255),),
                ListTile(
                  title: const Text("Sort by average rating" , style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 3,
                            groupValue: val,
                            onChanged: (value){
                              setState(() {
                                val = value;
                              });
                              
                            },
                            activeColor: Colors.blue,                                                     
                   ),
                ),
                const Divider( thickness: 1, color: Color.fromARGB(76, 255, 255, 255),),
                ListTile(
                  title: const Text("Sort by Latest" , style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 4,
                            groupValue: val,  
                            onChanged: (value){
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blue,                                                    
                   ),
                ),
                const Divider( thickness: 1, color: Color.fromARGB(76, 255, 255, 255),),
                ListTile(
                  title: const Text("Sort by Price: low to high" , style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 5,
                            groupValue: val,  
                            onChanged: (value){
                              setState(() {
                                val = value;
                              });
                            },
                            activeColor: Colors.blue,                         
                   ),
                ),
                const Divider( thickness: 1, color: Color.fromARGB(76, 255, 255, 255),),
                ListTile(
                  title: const Text("Sort by Price: high to low", style: TextStyle(color: Colors.white),),
                  trailing: Radio(
                            value: 6,
                            groupValue: val,  
                            onChanged: (value){
                              setState(() {
                                val = value;
                              });
                            },
                              activeColor: Colors.blue,                         
                   ),
                ),

                FlatButton(
                  color: Colors.blue,
                  child: const Text("OK", style: TextStyle( color: Colors.white),),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
            ]
          );                                
  }
}



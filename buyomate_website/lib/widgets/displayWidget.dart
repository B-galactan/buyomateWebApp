import 'package:flutter/material.dart';
import 'package:buyomate_website/models/models.dart';
import 'widgets.dart';

class DisplayWidget extends StatelessWidget {
final Item item;

  const DisplayWidget({
    
    required this.item,

  }); 

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 400,
        color: Colors.purple,
        child: Column(
          children: [
            Container(
              height: 370,
              
              child: MyImageWidget( imagePath: item.imageUrl ) ,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              height: 30,
              color: Colors.yellow,
              child: Text( item.name, style: const TextStyle( fontSize: 20, color: Colors.black),),
            )
          ]
          ),
      ),
    );
  }
}
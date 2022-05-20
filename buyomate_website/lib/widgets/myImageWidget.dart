import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
final String imagePath;

  const MyImageWidget({ 
    required this.imagePath 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration( color: Colors.grey ),
      child: Image.asset(imagePath, fit: BoxFit.fill) ,
    );
  }
}
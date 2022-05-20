import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class TopContainer extends StatefulWidget {
  TopContainer({Key? key}) : super(key: key);

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color:Colors.blue,
      //*********************************************************************************
      child: Column(
        children :[
          Container(
            height: 130,
            color: Colors.pink,
            child: Image.asset("assets/images/buyomateImage.PNG", fit: BoxFit.contain,),
          ),
          
          
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 50,
            color: Colors.green,
            child: Row(
              children : [
              Container(
                width: 290,
                
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 190,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search products...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      const SizedBox( width: 52,),

                    Container(
                       alignment: Alignment.center,
                       width: 40,
                       color: Colors.blue,
                       child: const Icon( Icons.search),
                     ),

                       
                    ] 
                  ),
                ),
                   
                      
              ),
              
              
              
               const SizedBox(width: 10,),
              
              Badge(
                badgeColor: Colors.blue,
                badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                child: Icon( Icons.lock))
              ]
                 ),
                      ),
      
          
          Container(
            height: 20,
            color: Colors.orange,
          )
        ]
      )
    );
  }
}


class TopContainerDesktop extends StatefulWidget {
  TopContainerDesktop({Key? key}) : super(key: key);

  @override
  State<TopContainerDesktop> createState() => _TopContainerDesktopState();
}

class _TopContainerDesktopState extends State<TopContainerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.purple,
            width: 650,
            child:Image.asset( "assets/images/buyomateImage.PNG", fit: BoxFit.contain),
          ),
          Container(
            alignment: Alignment.center,
            color: Color.fromARGB(255, 3, 197, 29),
            width:500,
            child: Container(
            padding: EdgeInsets.only(left: 10),
            height: 50,
            color: Colors.green,
            child: Row(
              children : [
              Container(
                width: 290,
                
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 190,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search products...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      const SizedBox( width: 52,),

                    Container(
                       alignment: Alignment.center,
                       width: 40,
                       color: Colors.blue,
                       child: const Icon( Icons.search),
                     ),
                    ] 
                  ),
                ),
              ),
              
               const SizedBox(width: 10,),
              
              Badge(
                badgeColor: Colors.blue,
                badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                child: Icon( Icons.lock))
              ]
                 ),
                      ), 
          )
        ]
        ),
    );
  }
}










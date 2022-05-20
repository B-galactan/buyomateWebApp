import 'package:buyomate_website/myData/myData.dart';
import 'package:buyomate_website/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BuyomateWidget extends StatefulWidget {
  BuyomateWidget({Key? key}) : super(key: key);

  @override
  State<BuyomateWidget> createState() => _BuyomateWidgetState();
}

class _BuyomateWidgetState extends State<BuyomateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomRight,
      color: Colors.green,
      height: 165,
      child: Card(
        child: Column(
          children: [
            Container(
              height: 50,
              alignment: Alignment.topLeft,
              child: const Text('Buyomate', style: TextStyle( fontSize: 20, color: Colors.black),),
            ),
            Container(
              height: 50,
              alignment: Alignment.topLeft,
              child: Text('Showing Results', style: TextStyle( fontSize: 20, color: Colors.black),),
            ),
            Container(
                alignment: Alignment.bottomRight,
                height: 50,
                child: Container( 
                        height: double.infinity,
                        width: 200,
                        color: Colors.yellow,
                        child: FlatButton(
                          child: Row(children: [ Text("Default Sorting"), SizedBox(width: 30 ,), Icon( Icons.arrow_drop_down)]),
                          onPressed: (){
                            showDialog(
                              context: context, 
                              builder: (context) {
                                return Dialog(
                                        child: Theme(    //The theme widget was neccessary to give unselected radio buttons color
                                          data: ThemeData(unselectedWidgetColor: Colors.white),
                                          child: Container(
                                            color: Color.fromARGB(207, 0, 0, 0),
                                            height: 500,
                                            child: const Card(
                                              color: Color.fromARGB(207,0 ,0, 0),
                                              child: MyRadioWidget()
                                              
                                            ),
                                          ),
                                        ),
                                );
                              }
                              );
                          },
                          ),
          
                         ),
            ),
          ],
        ),
      ),
      
    );
  }
}



class BuyomateDesktopWidget extends StatefulWidget {
  BuyomateDesktopWidget({Key? key}) : super(key: key);

  @override
  State<BuyomateDesktopWidget> createState() => _BuyomateDesktopWidgetState();
}

class _BuyomateDesktopWidgetState extends State<BuyomateDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, top: 30),
      width: double.infinity,
      color: Color.fromARGB(255, 15, 250, 66),
      height: 1000,
      child: Row(
        children: [
          Container(
            color: Colors.purpleAccent,
            width: 800,
            child: Column(
              children: [
                Container(
                    color: Colors.yellow,
                    height: 150,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 400,
                            color: Colors.pink,
                            child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(
                                        'Buyomate',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -1.2,
                                        ),
                                    ),
                                      const SizedBox( height: 20,),

                                    Text(
                                      'Showing results of 1-12 of 115 results',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          letterSpacing: -1.2,
                                        ),
                                    )
                                  ],
                            )
                          ),

                          
                          
                          Container(
                            color: Colors.indigo,
                            width: 400,
                            alignment: Alignment.centerRight,
                            child: Container( 
                              height: 50,
                              width: 200,
                              color: Colors.yellow,
                              child: FlatButton(
                                child: Row(children: [ Text("Default Sorting"), SizedBox(width: 30 ,), Icon( Icons.arrow_drop_down)]),
                                onPressed: (){
                                  showDialog(
                                    context: context, 
                                    builder: (context) {
                                      return Dialog(
                                        child: Theme(    //The theme widget was neccessary to give unselected radio buttons color
                                          data: ThemeData(unselectedWidgetColor: Colors.white),
                                          child: Container(
                                            color: Color.fromARGB(207, 0, 0, 0),
                                            width: 400,
                                            height: 500,
                                            child: const Card(
                                              color: Color.fromARGB(207,0 ,0, 0),
                                              child: MyRadioWidget()
                                              
                                            ),
                                          ),
                                        ),
                                );
                              }
                              );
                          },
                          ),
          
                         ), 
                          )
                        ]
                        ),
                    ),
                  ),
                   
                  //Below is the container with the Grid Image view 
                  Container(
                    height: 700,
                    color: Colors.blueGrey,
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 8.0,
                      children: List.generate(itemsInCategories.length, (index) {
                                   return Container(
                                     height: 200 ,
                                     width: 200,
                                     color: Colors.cyan,
                                     child: Card(
                                       child: Container(
                                         child: Column(
                                           children: [
                                             Container(
                                               height: 200,
                                               child: MyImageWidget(imagePath: itemsInCategories[index].imageUrl),
                                             ),
                                             Container( 
                                               height: 50 ,
                                               child: Text( itemsInCategories[index].name, style: TextStyle( fontSize: 20))
                                             )   
                                         ],)
                                       ),
                                     ),
                                   );
                          }
                        ),
                      ),
                  )
                
              ],
            ),
            
          ),
          const SizedBox( width: 30 ,),

          Container(
            color: Color(0xFFD6D6D6),
            width: 400,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  color: Colors.brown,
                  child: const Text("Products", style: TextStyle( fontSize: 20, color: Color.fromARGB(255, 24, 248, 31)),),
                ),
                Container(
                  height: 800,
                  color: Colors.indigo,
                  child: ListView.builder(
                    itemCount: webListItems.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        title: Text(webListItems[index].name.toString()),
                        trailing: const Icon( Icons.image),
                      ),
                    ),
                    ) ,

                )
              ],
            ),
          )
        ],
      ) ,
    );
  }
}



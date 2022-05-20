import 'package:buyomate_website/models/models.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:buyomate_website/myData/myData.dart';

class CategoryWidget extends StatefulWidget {
 const CategoryWidget({Key? key}) : super(key: key);
  
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  List<CategoryItem> categories = [
              CategoryItem(name: 'Baby', value:0, items: itemsInCategories),
              CategoryItem(name: 'Bags, Wallets And Luggage', value: 1,items: itemsInCategories),
              CategoryItem(name: 'Beauty', value: 2 ,items: itemsInCategories),
              CategoryItem(name: 'Car And Motobike', value: 3,items: itemsInCategories),
              CategoryItem(name: 'Clothing And Accessories', value: 4, items: itemsInCategories),
              CategoryItem(name: 'Computers And Accessories',value: 5 ,items: itemsInCategories),
              CategoryItem(name: 'Electronics', value: 6 ,items: itemsInCategories),
              CategoryItem(name: 'Furniture', value: 7 ,items: itemsInCategories),
              CategoryItem(name: 'Health And Personal Care', value: 8 ,items: itemsInCategories),
              CategoryItem(name: 'Home And Kitchen', value: 9 ,items: itemsInCategories),
              CategoryItem(name: 'Jewellery', value: 10 ,items: itemsInCategories),
              CategoryItem(name: 'Office Products', value: 11 ,items: itemsInCategories),
              CategoryItem(name: 'Pet Supplies', value: 12 ,items: itemsInCategories),
              CategoryItem(name: 'Shoes And HandBags', value: 13 ,items: itemsInCategories),
              CategoryItem(name: 'Toys And Games', value: 14 ,items: itemsInCategories),
              CategoryItem(name: 'Uncategorized', value: 15 ,items: itemsInCategories)
            
            ];

            CategoryItem? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Container(
        width: 50,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(3),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.yellow,
                  ),
                  SizedBox( width: 4,),
            
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            
              items: categories.map((item) => 
                 DropdownMenuItem<CategoryItem>(
                   value: item,
                   child: Text(
                     item.name,
                     style: const TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                     overflow: TextOverflow.ellipsis,
                   ),
                 )
              ).toList(),
            
              
              value: selectedValue,
              onChanged: (value){
                setState(() {
                  selectedValue = value as CategoryItem;
                });
              },
            
              
              iconSize: 40,
              iconEnabledColor: Colors.yellow,
              buttonHeight: 50,
              buttonWidth: 80,
              buttonPadding: EdgeInsets.only(left: 30, right: 30),
              buttonDecoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Color.fromARGB(255, 47, 33, 243),
              ),
            
             
              buttonElevation: 2,
              itemHeight: 40,
              itemPadding: const EdgeInsets.only(left: 14, right: 14),
              dropdownMaxHeight: 200,
              dropdownWidth: 200,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                color: Colors.purple,
              ),
              
              
              dropdownElevation: 8,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 5,
              scrollbarAlwaysShow: true,
              offset: const Offset(-20, 0),
            ),
          ),
        ),
      ),
    );
  }
}




class CategoryWidgetDesktop extends StatefulWidget {
  CategoryWidgetDesktop({Key? key}) : super(key: key);

  @override
  State<CategoryWidgetDesktop> createState() => _CategoryWidgetDesktopState();
}

class _CategoryWidgetDesktopState extends State<CategoryWidgetDesktop> {

  //For all the buttons to have borders at different times we need differents variables each time
  late bool showBorder1 = false;
  late bool showBorder2 = false;
  late bool showBorder3 = false;
  late bool showBorder4 = false;
  late bool showBorder5 = false;
  late bool showBorder6 = false;

  
  


  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.only(left: 80, right: 80),
            width: double.infinity,
            height: 80 ,
            color: Color.fromARGB(255, 43, 7, 175) ,
            child: Row(
              
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder1 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder1 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('HOME', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                const SizedBox( width: 30,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder2 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder2 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('PRIVACY POLICY', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                const SizedBox( width: 30,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder3 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder3 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('ABOUT US', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                const SizedBox( width: 30,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder4 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder4 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('DISCLAIMER', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                const SizedBox( width: 30,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder5 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder5 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('TERMS AND CONDITIONS', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                const SizedBox( width: 30,),

                DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder6 ? Border( bottom: BorderSide(color: Colors.white, width: 2,), ) : null
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder6 = hovered;
                      });
                    },
                    child: TextButton(
                      child: const Text('CONTACT US', style: TextStyle( color: Colors.white ),) ,
                      onPressed: (){} ,
                    ),
                  ),
                ),
                

                const SizedBox( width: 60,),
                DesktopCategoryDropDown()
              ]
              ),
    );
  }
}


//Its better to create and put the widgets below in a desktop/web screen folder or widget folder 
//and put them there for easy maintenance



class DesktopCategoryDropDown extends StatefulWidget {
  DesktopCategoryDropDown({Key? key}) : super(key: key);

  @override
  State<DesktopCategoryDropDown> createState() => _DesktopCategoryDropDownState();
}

class _DesktopCategoryDropDownState extends State<DesktopCategoryDropDown> {

  List<CategoryItem> categories = [
              CategoryItem(name: 'Baby', value:0, items: itemsInCategories),
              CategoryItem(name: 'Bags, Wallets And Luggage', value: 1,items: itemsInCategories),
              CategoryItem(name: 'Beauty', value: 2 ,items: itemsInCategories),
              CategoryItem(name: 'Car And Motobike', value: 3,items: itemsInCategories),
              CategoryItem(name: 'Clothing And Accessories', value: 4, items: itemsInCategories),
              CategoryItem(name: 'Computers And Accessories',value: 5 ,items: itemsInCategories),
              CategoryItem(name: 'Electronics', value: 6 ,items: itemsInCategories),
              CategoryItem(name: 'Furniture', value: 7 ,items: itemsInCategories),
              CategoryItem(name: 'Health And Personal Care', value: 8 ,items: itemsInCategories),
              CategoryItem(name: 'Home And Kitchen', value: 9 ,items: itemsInCategories),
              CategoryItem(name: 'Jewellery', value: 10 ,items: itemsInCategories),
              CategoryItem(name: 'Office Products', value: 11 ,items: itemsInCategories),
              CategoryItem(name: 'Pet Supplies', value: 12 ,items: itemsInCategories),
              CategoryItem(name: 'Shoes And HandBags', value: 13 ,items: itemsInCategories),
              CategoryItem(name: 'Toys And Games', value: 14 ,items: itemsInCategories),
              CategoryItem(name: 'Uncategorized', value: 15 ,items: itemsInCategories)
            
            ];

            CategoryItem? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(3),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox( width: 4,),
            
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            
              items: categories.map((item) => 
                 DropdownMenuItem<CategoryItem>(
                   value: item,
                   child: Text(
                     item.name,
                     style: const TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                     overflow: TextOverflow.ellipsis,
                   ),
                 )
              ).toList(),
            
              
              value: selectedValue,
              onChanged: (value){
                setState(() {
                  selectedValue = value as CategoryItem;
                });
              },
            
              
              iconSize: 40,
              iconEnabledColor: Colors.white,
              buttonHeight: 50,
              buttonWidth: 80,
              buttonPadding: EdgeInsets.only(left: 30, right: 30),
              buttonDecoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Color.fromARGB(255, 47, 33, 243),
              ),
            
             
              buttonElevation: 2,
              itemHeight: 40,
              itemPadding: const EdgeInsets.only(left: 14, right: 14),
              dropdownMaxHeight: 200,
              dropdownWidth: 200,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                color: Colors.purple,
              ),
              
              
              dropdownElevation: 8,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 5,
              scrollbarAlwaysShow: true,
              offset: const Offset(-20, 0),
            ),
          ),
        ),
      );
  }
}




















// 
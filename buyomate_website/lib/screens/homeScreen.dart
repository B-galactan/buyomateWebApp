
import 'package:buyomate_website/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:buyomate_website/myData/myData.dart';
import 'package:buyomate_website/models/models.dart';




class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 TrackingScrollController scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: _HomeScreenMobile(),
          tablet: _HomeScreenTablet(),
          desktop: _HomeScreenDesktop() ,
           
        ),
      ),
    );
  
  }
}

//For this code below You can create separate files for the mobile and the desktop
//screens and put them in the screens folder as desktopScreen.dart
//and mobileScreeen.dart for good mantaining purporses
//








class _HomeScreenMobile extends StatelessWidget {
  const _HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
              // controller: scrollController,
              slivers: [
                SliverAppBar(
                  brightness: Brightness.light,
                  backgroundColor: Colors.white,
                  title: Text(
                    'Buyomate.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1.2,
                    ),
                ),
                centerTitle: true,
                  floating: true,
                ),
                 
                SliverToBoxAdapter(
                  child: TopContainer(),
                ),
        
                SliverToBoxAdapter(
                  child: CategoryWidget(),
                ),
        
                SliverToBoxAdapter(
                  child: BuyomateWidget(),
                ),
        
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index)  {
                      final Item item = itemsInCategories[index];
                      return DisplayWidget(item: item);
                    },
                    childCount: itemsInCategories.length,
                  ),
          
                ),
              ],
            );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  const _HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
              // controller: scrollController,
              slivers: [
                // Notice that there is no sliver app Bar for this desktop version
                 
                SliverToBoxAdapter(
                  child: TopContainerDesktop(),
                ),
        
                SliverToBoxAdapter(
                  child: CategoryWidgetDesktop(),
                ),
        
                SliverToBoxAdapter(
                  child: BuyomateDesktopWidget(),
                ),
        
                // SliverList(
                //   delegate: SliverChildBuilderDelegate(
                //     (context, index)  {
                //       final Item item = itemsInCategories[index];
                //       return DisplayWidget(item: item);
                //     },
                //     childCount: itemsInCategories.length,
                //   ),
          
                // ),
              ],
            );
  }
}









class _HomeScreenTablet extends StatelessWidget {
  const _HomeScreenTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      color: Color.fromARGB(255, 43, 7, 175),
      child: Text("TABLET SCREEN", style: TextStyle( color: Colors.white),),
    );
  }
}
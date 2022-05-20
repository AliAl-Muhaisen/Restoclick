import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:restoclick/screens/favorite.dart';
import 'package:restoclick/screens/homePage.dart';
import 'package:restoclick/screens/loginPage.dart';
import 'package:restoclick/screens/searchPage.dart';
import 'package:restoclick/screens/signupPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages=[HomePage(),SearchPage(),FavoritePage(),SignupPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            appBar: AppBar(title: Text("Restoclick")),
            extendBody: true,
              
            bottomNavigationBar: CurvedNavigationBar(
              // color: Color.fromARGB(209, 32, 31, 31),
              
              items: [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                IconButton(
                icon: Icon(Icons.search,size: 30,),
                  
                  onPressed: (){
                     showSearch(context: context, delegate: MySearchDelegate());
                  },
                ),
                Icon(
                  Icons.favorite,
                  size: 30,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
              ],
              index: index,
              onTap: (index) => setState(() {
                this.index = index;
              }),
              backgroundColor: Colors.transparent,
              // buttonBackgroundColor: Colors.black45,
              
            ),
            
            body: pages[index],
          ),
        ),
      ),
    );
  }
}

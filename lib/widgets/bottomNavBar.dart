import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:restoclick/screens/favorite.dart';
import 'package:restoclick/screens/homePage.dart';
import 'package:restoclick/screens/loginPage.dart';
import 'package:restoclick/screens/searchPage.dart';
import 'package:restoclick/screens/signupPage.dart';

import '../models/screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages = [HomePage(), SearchPage(), FavoritePage(), SignupPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Restoclick"),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(166, 104, 28, 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(166, 104, 28, 28),
                  ),
                ),
              ],
            ),
            extendBody: true,
            bottomNavigationBar: CurvedNavigationBar(
              // color: Color.fromARGB(209, 32, 31, 31),

              items: [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {
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
                // IconButton(
                //   icon: Icon(
                //     Icons.account_circle_outlined,
                //     size: 30,
                //   ),
                //   onPressed: ()=>Screen.navigatorPush(context, page)//ZoomDrawer.of(context)!.toggle(),
                // ),
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

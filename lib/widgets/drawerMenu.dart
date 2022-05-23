import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:restoclick/screens/mainPage.dart';
import 'package:restoclick/screens/signupPage.dart';
import 'package:restoclick/widgets/bottomNavBar.dart';
import '../main.dart';
import '../screens/homePage.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:get/get.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        menuScreen: MainPage(),
        mainScreen: MyHomePage(),
      );
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.black,
            )
          ],
        ),
      );
}

// class MyHomePage extends GetView<MyDrawerController> {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MyDrawerController>(
//       builder: (_) => ZoomDrawer(
//         controller: _.zoomDrawerController,
//         menuScreen: MenuScreen(),
//         mainScreen: MainScreen(),
//         borderRadius: 24.0,
//         showShadow: true,
//         angle: -12.0,
//         drawerShadowsBackgroundColor: Colors.grey,
//         slideWidth: MediaQuery.of(context).size.width * 0.65,
//       ),
//     );
//   }
// }

// class MenuScreen extends <MyDrawerController> {
//   const MenuScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellow,
//     );
//   }
// }

// class MainScreen extends GetView<MyDrawerController> {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.pink,
//       child: Center(
//         child: ElevatedButton(
//           onPressed: controller.toggleDrawer,
//           child: Text("Toggle Drawer"),
//         ),
//       ),
//     );
//   }
// }

// class MyDrawerController extends GetxController {
//   final zoomDrawerController = ZoomDrawerController();

//   void toggleDrawer() {
//     print("Toggle drawer");
//     zoomDrawerController.toggle?.call();
//     update();
//   }
// }
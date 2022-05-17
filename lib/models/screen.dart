import 'package:flutter/material.dart';

class Screen {
  
  static void navigatorPush(BuildContext context, page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder:(_)=> page),
    );
  }

  // static void loginPage(context, page)
  // {
  //   _navigatorPush(context, page);
  // }
}

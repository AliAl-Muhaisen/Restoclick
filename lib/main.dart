import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import './themes/stander/text.dart';
import './themes/stander/buttons.dart';
import 'screens/mainPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    // SystemUiOverlayStyle.dark,
    SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(0, 0, 0, 0),
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: GoogleFonts.abel(
              backgroundColor: Color.fromARGB(0, 255, 254, 252), fontSize: 20),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 216, 210, 210),
        //Color.fromARGB(
        //255, 247, 244, 244), //Color.fromARGB(255, 202, 197, 197)
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: MainPage(),
    );
  }
}

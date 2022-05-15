import 'package:flutter/material.dart';

const double borderRad4LogSignGuest = 60;
final ButtonStyle lognSignButtonStyle = ElevatedButton.styleFrom(
  primary: Colors.black,
  onPrimary: Colors.white,
  side: const BorderSide(color: Colors.red, width: 2, style: BorderStyle.solid),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRad4LogSignGuest)),
  textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
  shadowColor: Color.fromARGB(255, 14, 13, 13),
  elevation: 10,
);

final ButtonStyle guestButtonStyle = ElevatedButton.styleFrom(
  primary: Color.fromARGB(255, 255, 0, 0),
  onPrimary: Colors.white,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRad4LogSignGuest)),
  textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
);

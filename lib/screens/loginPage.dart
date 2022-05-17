import 'package:flutter/material.dart';

import '../themes/stander/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Login Page",
          style: appNameTextStyle,
        ),
      ),
    );
  }
}

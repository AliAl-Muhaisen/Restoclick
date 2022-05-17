import 'package:flutter/material.dart';

import '../themes/stander/text.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'SignUp Page',
          style: appNameTextStyle,
        ),
      ),
    );
  }
}

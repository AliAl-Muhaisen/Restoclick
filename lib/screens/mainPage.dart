import 'package:flutter/material.dart';
import './loginPage.dart';
import './signupPage.dart';
import '../themes/stander/text.dart';
import '../models/screen.dart';
import '../themes/stander/buttons.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  void selectScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return LoginPage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              "Restoclick",
              style: appNameTextStyle,
            ),
          ),
          const Text(
            'The perfect Restaurant is one \nclick away',
            style: describeAppNameTextStyle,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 35, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 110,
                    height: 53,
                    child: ElevatedButton(
                      style: loginSignButtonStyle(),
                      onPressed: () =>
                          Screen.navigatorPush(context, LoginPage()),
                      child: Text("Log in"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 110,
                    height: 53,
                    child: ElevatedButton(
                      style: loginSignButtonStyle(),
                      onPressed: () =>
                          Screen.navigatorPush(context, SignupPage()),
                      child: const Text("Sign up"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 30,
            child: SizedBox(
              height: 55,
              child: ElevatedButton(
                style: guestButtonStyle,
                onPressed: () {},
                child: const Text("Continue as Guest"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

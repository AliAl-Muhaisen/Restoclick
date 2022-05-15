import 'package:flutter/material.dart';
import '../themes/stander/text.dart';

import '../themes/stander/buttons.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

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
                "-Restoclick-",
                style: appNameTextStyle,
              ),
            ),
            const Text(
              'The perfect Restaurant is one \nclick away',
              style: describeAppNameTextStyle,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 35,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 110,
                      height: 53,
                      child: ElevatedButton(
                        style: lognSignButtonStyle,
                        onPressed: () {},
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
                        style: lognSignButtonStyle,
                        onPressed: () {},
                        child: const Text("Sign up"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width-30,
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
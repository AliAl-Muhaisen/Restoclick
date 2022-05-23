import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/stander/buttons.dart';
import '../themes/stander/text.dart';
import '../widgets/inputField.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  var passwordInput = InputField(
    inputIcon: Icons.shield,
    keyBoardType: TextInputType.visiblePassword,
    label: "Password",
    hintText: null,
  );
  var emailInput = InputField(
    inputIcon: Icons.email,
    keyBoardType: TextInputType.emailAddress,
    label: "E-Mail",
    hintText: "example@gmail.com",
  );
  var phoneNumber = InputField(
    inputIcon: Icons.phone,
    keyBoardType: TextInputType.phone,
    label: "Phone Number",
    hintText: "07********",
  );
  var firstName = InputField(
      inputIcon: Icons.account_circle,
      keyBoardType: TextInputType.name,
      label: "User Name",
      hintText: "Ali Al-Muhaisen");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Sign-Up",
                    style: appNameTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Shortcuts(
                shortcuts: const <ShortcutActivator, Intent>{
                  // Pressing space in the field will now move to the next field.
                  SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
                },
                child: FocusTraversalGroup(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: () {
                      Form.of(primaryFocus!.context!)!.save();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Wrap(
                        children: [
                          // TextInputType.visiblePassword,Icons.email
                          emailInput,
                          phoneNumber,
                          firstName,
                          passwordInput,
        
                          Center(
                            child: SizedBox(
                              width: (MediaQuery.of(context).size.width - 30),
                              height: 45,
                              child: ElevatedButton(
                                style: loginSignButtonStyle(radius: 20),
                                onPressed: () {},
                                child: Text("Sign up"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

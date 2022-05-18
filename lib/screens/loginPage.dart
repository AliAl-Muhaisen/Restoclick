import 'package:flutter/material.dart';
import 'package:restoclick/models/verify.dart';
import '../themes/stander/buttons.dart';
import '../widgets/inputField.dart';

import '../themes/stander/text.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({Key? key}) : super(key: key);
  // final emailInputController = TextEditingController();
  // bool isEmail = false;
  @override
  // void initState() {
  //   super.initState();
  //   emailInputController.addListener(
  //     () => setState(() {}),
  //   );
  // }

  // void stateOfIsEmail(value) {
  //   Verify.isEMail(value) ? isEmail = true : isEmail = false;
  //   // isEmail=!isEmail;
  //   print('i am here');
  //   setState(() {
  //     isEmail;
  //   });
  // }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Login Page",
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
                        passwordInput,
                       
                        Center(
                          child: SizedBox(
                            width: (MediaQuery.of(context).size.width - 30),
                            height: 45,
                            child: ElevatedButton(
                              style: loginSignButtonStyle(radius: 20),
                              onPressed: () {},
                              child: Text("Log in"),
                            ),
                          ),
                        ),
                        // InputField(),

                        // InputField
                        // TextFormField(
                        //   controller: emailInputController,
                        //   // onChanged: (String? value) =>stateOfIsEmail(value),
                        //   decoration: InputDecoration(
                        //     label: Text("E-Mail"),
                        //     hintText: "example@gmail.com",
                        //     // errorText:
                        //     //     isEmail ? 'Do not use the @ char.' : 'null',
                        //     border: OutlineInputBorder(),
                        //     // focusedBorder: sBorder,
                        //     prefixIcon: Icon(Icons.email),
                        //     suffixIcon: emailInputController.text.isNotEmpty
                        //         ? IconButton(
                        //             color: Colors.red,
                        //             icon: Icon(Icons.close),
                        //             onPressed: () {
                        //               emailInputController.clear();
                        //             },
                        //           )
                        //         : null,
                        //   ),
                        //   // validator: (String? value) =>stateOfIsEmail(value),
                        //   keyboardType: TextInputType.emailAddress,
                        //   textCapitalization: TextCapitalization.none,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

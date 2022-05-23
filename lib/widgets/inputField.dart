import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  // const InputField({Key? key}) : super(key: key);
  final keyBoardType;
  final inputIcon;
  final label;
  final hintText;
  bool isValid = false;
  // ignore: use_key_in_widget_constructors
  InputField({
    this.keyBoardType,
    this.inputIcon,
    this.label,
    this.hintText,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final inputController = TextEditingController();

  // _InputFieldState(this.keyBoardType);

  void initState() {
    super.initState();
    inputController.addListener(
      () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.keyBoardType);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
     
        child: TextFormField(
          controller: inputController,
          onChanged: (String? value) {
            widget.isValid = !widget.isValid;
            print('\n\n');
            print(widget.isValid);
            print('\n\n');
          },
          decoration: InputDecoration(
            label: Text(widget.label),
            hintText: widget.hintText,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.7),
            ),

            // errorText:
            //     isEmail ? 'Do not use the @ char.' : 'null',
            border: OutlineInputBorder(),
            prefixIcon: Icon(widget.inputIcon),
            suffixIcon: inputController.text.isNotEmpty
                ? IconButton(
                    color: Colors.red,
                    icon: Icon(Icons.close),
                    onPressed: () {
                      inputController.clear();
                    },
                  )
                : null,
          ),
          // validator: (String? value) =>stateOfIsEmail(value),
          keyboardType: widget.keyBoardType,
        
      ),
    );
  }
}

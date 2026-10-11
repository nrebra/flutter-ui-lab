import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode fosucNode = FocusNode();
  FocusNode fosucNode2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter:
                (
                  BuildContext context, {
                  required int currentLength,
                  required bool isFocused,
                  required int? maxLength,
                }) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    height: 10,
                    width: 10,
                    color: isFocused ? Colors.green : Colors.red,
                  );
                },
            autofillHints: const [AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: fosucNode,
            inputFormatters: [],
            onChanged: (value) {
              if (value.length == 10) {
                // Do something when the length is 10
              }
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: 'Mail',
              hintText: 'Mail',
              fillColor: Color.fromARGB(255, 0, 0, 0),
              filled: true,
            ),
          ),
          TextField(focusNode: fosucNode2),
        ],
      ),
    );
  }
}

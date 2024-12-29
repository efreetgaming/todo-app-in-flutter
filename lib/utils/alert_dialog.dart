import 'package:flutter/material.dart';
import 'package:my_app/utils/my_buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // text input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: "What is your task?",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // save button
                Mybutton(text: "save", onPressed: onSave),

                const SizedBox(width: 9,),

                // delete button
                Mybutton(text: "delete", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

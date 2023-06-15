import 'package:flutter/material.dart';

class ChangeName {
  static showDialogBox({
    required BuildContext context,
    required String title,
    required String body,
    required String buttonText,
    required Function() onPressedButton,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xfff6f6f6),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff454545),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  body,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff454545),
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      color: Color(0xff454545),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff454545),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff454545),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            alignment: Alignment.center,
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.3,
                color: const Color(0xff031833),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                onPressed: onPressedButton,
                child: Text(
                  buttonText,
                  style:
                      const TextStyle(color: Color(0xffffffff), fontSize: 14),
                ),
              )
            ],
            elevation: 100,
          );
        });
  }
}

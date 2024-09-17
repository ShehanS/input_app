import 'package:flutter/material.dart';

class CustomizedDialog extends StatelessWidget {
  final String title;
  final String buttonText;
  final Function onPressed;

  const CustomizedDialog({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => onPressed(),
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomDialog(BuildContext context, String title, String buttonText) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomizedDialog(
        title: title,
        buttonText: buttonText,
        onPressed: () {
          Navigator.pop(context);
        },
      );
    },
  );
}

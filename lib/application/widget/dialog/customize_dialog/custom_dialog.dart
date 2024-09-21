import 'package:flutter/material.dart';

import '../../../../infrastructure/const/custom_text.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';

class CustomizedDialog extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onClose; // Change to VoidCallback for type safety
  final Widget? widget; // Correct the optional widget parameter

  const CustomizedDialog({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.onClose,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText().h1(txt: title, bold: true, color: blueGray),
            const SizedBox(height: 15),
            if (widget != null) widget!,
            TextButton(
              onPressed: () => onClose(),
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomDialog(
    BuildContext context,
    String title,
    String buttonText,
    Widget? widget,
    VoidCallback onClose,
    ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomizedDialog(
        title: title,
        buttonText: buttonText,
        widget: widget,
        onClose: () {
          Navigator.pop(context);
          onClose();
        },
      );
    },
  );
}

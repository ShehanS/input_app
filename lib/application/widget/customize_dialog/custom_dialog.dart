import 'package:flutter/material.dart';
import '../../../../infrastructure/const/custom_text.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';

/// A custom dialog widget with Yes and No buttons.
class CustomizedDialog extends StatelessWidget {
  final String title;
  final Widget content;
  final VoidCallback onYes;
  final VoidCallback onNo;
  final VoidCallback onClose;
  final String yesText;
  final String noText;
  final String closeText;
  final bool isYesNoDialog;
  final double width;
  final double height;

  const CustomizedDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.onYes,
    required this.onNo,
    required this.onClose,
    this.yesText = 'Yes',
    this.noText = 'No',
    this.closeText = 'Close',
    this.isYesNoDialog = true,
    required this.width,
    required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomText().h1(txt: title, bold: true, color: AppColors.blueGray),
              const SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  child: content,
                ),
              ),
              const SizedBox(height: 15),
              if (isYesNoDialog)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        onYes();
                      },
                      child: Text(yesText),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        onNo();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blueGray,
                      ),
                      child: Text(noText),
                    ),
                  ],
                )
              else
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onClose();
                  },
                  child: Text(closeText),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Shows a dialog with Yes and No buttons.
void showYesNoDialog({
  required BuildContext context,
  required String title,
  required Widget content,
  required VoidCallback onYes,
  required VoidCallback onNo,
  required VoidCallback onClose,
  required double width,
  required double height,
  String yesText = 'Yes',
  String noText = 'No',
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomizedDialog(
        title: title,
        content: content,
        onYes: onYes,
        onNo: onNo,
        onClose: onClose,
        width: width,
        height: height,
        yesText: yesText,
        noText: noText,
        isYesNoDialog: true,
      );
    },
  );
}

void showBasicDialog({
  required BuildContext context,
  required String title,
  required Widget content,
  required VoidCallback onClose,
  required double width,
  required double height,
  String closeText = 'Close',
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomizedDialog(
        title: title,
        content: content,
        onYes: () {},
        onNo: () {},
        onClose: onClose,
        closeText: closeText,
        width: width,
        height: height,
        isYesNoDialog: false,
      );
    },
  );
}

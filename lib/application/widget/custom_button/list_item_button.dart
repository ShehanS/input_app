import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../infrastructure/const/custom_text.dart';

class ListItemButton extends StatelessWidget {
  final SubIssueListEntity deptIssue;
  final String? icon;
  final String? department;
  final Color startColor;
  final Color endColor;
  final VoidCallback onPressed;

  const ListItemButton({
    Key? key,
    this.icon,
    required this.startColor,
    required this.endColor,
    required this.onPressed,
    this.department,
    required this.deptIssue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(double.infinity, 80),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            elevation: 5,
            shadowColor: Colors.black45,
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [startColor, endColor],
                // Gradient from startColor to endColor
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        icon!,
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText().dynamicTxt(
                          txt: deptIssue.displayName ?? "Button",
                          // Default fallback text
                          color: Colors.white,
                          // Text color to white
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText().dynamicTxt(
                          txt:
                              "${deptIssue.department}",
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

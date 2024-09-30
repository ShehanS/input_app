import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/const/custom_text.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';

class ErrorApplyDialog extends StatelessWidget {
  final String title;
  final SubIssueListEntity issue;
  final Widget content;
  final double width;
  final double height;

  const ErrorApplyDialog({
    Key? key,
    required this.title,
    required this.issue,
    required this.content,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.deepPurple,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  CustomText().grey(txt: issue.displayName ?? ""),
                ],
              ),
              const SizedBox(height: 20),
             SizedBox(
               width: double.infinity,
               child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   CustomText().dynamicTxt(
                       txt: 'Category: ${issue.categoryType ?? "N/A"}',
                       color: AppColors.deepPurple,
                       fontSize: 14),
                   if (issue.department != null)
                     CustomText().dynamicTxt(
                         txt: 'Department: ${issue.department}',
                         color: AppColors.deepPurple,
                         fontSize: 14),
                   if (issue.issueList != null && issue.issueList!.isNotEmpty)
                     Padding(
                       padding: const EdgeInsets.only(top: 10.0),
                       child: CustomText().grey(txt: "Errors", fontSize: 16),
                     ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

void showIssueApplyDialog({
  required BuildContext context,
  required String title,
  required SubIssueListEntity issue,
  required Widget content,
  required double width,
  required double height,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorApplyDialog(
        issue: issue,
        title: title,
        content: content,
        width: width,
        height: height,
      );
    },
  );
}

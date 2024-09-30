import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:flutter/material.dart';

import '../../../../infrastructure/const/custom_text.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';

class ErrorApplyDialog extends StatelessWidget {
  final String title;
  final SubIssueListEntity issue;
  final double width;
  final double height;

  const ErrorApplyDialog({
    Key? key,
    required this.title,
    required this.issue,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Internal', 'MAC 001', 'CUT 001', 'Option 4'];
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
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        AppColors.blueGray,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
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
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  // borderRadius: const BorderRadius.all(Radius.circular(10)),
                  // border: Border.all(color: AppColors.deepPurple, width: 2),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText()
                            .grey(txt: "Select machine/ module", fontSize: 15),
                        DropdownButton<String>(
                          hint: CustomText()
                              .grey(txt: "Not select", fontSize: 15),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: const SizedBox(),
                          onChanged: (String? newValue) {},
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child:
                                  CustomText().grey(txt: value, fontSize: 15),
                            );
                          }).toList(),
                        ),
                      ],
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
  required double width,
  required double height,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorApplyDialog(
        issue: issue,
        title: title,
        width: width,
        height: height,
      );
    },
  );
}

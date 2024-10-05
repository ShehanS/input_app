import 'package:downtime_pro/application/pages/landing_page/widget/sub_issue_selector.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/global//color/globle_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'issue_apply_dialog.dart';

class IssueSelector extends StatelessWidget {
  const IssueSelector({Key? key}) : super(key: key);

  bool checkAllSubIssues(dynamic issue) {
    for (var subIssue in issue.issueList ?? []) {
      if (subIssue.issueList == null || subIssue.issueList!.isEmpty) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (innerContext, innerState) {
        return Wrap(
          alignment: WrapAlignment.start,
          children: innerState.deptIssueList!.map((issue) {
            return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                    onTap: () {
                      if (issue.issueList!.isEmpty) {
                        showIssueApplyDialog(
                            context: context,
                            title: "Add Machine ${issue.displayName ?? ""}",
                            width: double.infinity,
                            height: double.infinity,
                            issue: issue);
                      } else {
                        bool result = checkAllSubIssues(issue);
                        if (result) {
                          showErrorSelectorDialog(
                              context: context,
                              title: issue.displayName ?? "Unknown",
                              issueList:
                                  issue.issueList as List<SubIssueList>,
                              onClose: () {
                                Navigator.of(context).pop();
                              },
                              width: double.infinity,
                              height: double.infinity);
                        } else {
                          showIssueApplyDialog(
                              context: context,
                              title: "Add Machine ${issue.displayName ?? ""}",
                              width: double.infinity,
                              height: double.infinity,
                              issue: issue);
                        }
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: innerState.color != null
                              ? [
                                  AppColors.deepPurple,
                                  Color(int.parse(innerState.color as String)),
                                ]
                              : [
                                  AppColors.blueGray,
                                  AppColors.blueGray,
                                ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(35),
                        // Circular edges
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 3),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: issue.issueList!.isNotEmpty
                                ? const Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.white,
                                    size: 24,
                                  )
                                : const Icon(
                                    Icons.error,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText().dynamicTxt(
                                txt: issue.displayName ?? "Button",
                                // Default fallback text
                                color: Colors.white,
                                // Text color to white
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText().dynamicTxt(
                                txt:
                                    "${issue.categoryType} | ${issue.issueCode}" ??
                                        "Description",
                                color: Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )));
          }).toList(),
        );
      },
    );
  }
}

import 'package:downtime_pro/application/widget/customize_dialog/custom_dialog.dart';
import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:downtime_pro/infrastructure/domain/globle/color/globle_colors.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:flutter/material.dart';

import 'issue_apply_dialog.dart';

class ErrorSelector extends StatefulWidget {
  final List<SubIssueListEntity> issueList;
  final String title;
  final VoidCallback onClose;
  final double width;
  final double height;

  const ErrorSelector({
    Key? key,
    required this.title,
    required this.onClose,
    required this.width,
    required this.height,
    required this.issueList,
  }) : super(key: key);

  @override
  State<ErrorSelector> createState() => _ErrorSelectorState();
}

class _ErrorSelectorState extends State<ErrorSelector> {
  bool checkAllSubIssues(SubIssueListEntity issue) {
    for (var subIssue in issue.issueList ?? []) {
      if (subIssue.issueList == null || subIssue.issueList!.isEmpty) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: widget.onClose,
                      icon: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.deepPurple,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_back,
                            color: Colors.white, size: 50),
                      ),
                    ),
                    CustomText().grey(txt: widget.title),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: double.maxFinite,
                  child: DefaultTabController(
                    length: widget.issueList.length,
                    child: Column(
                      children: [
                        TabBar(
                          tabs: widget.issueList
                              .map((issue) => Tab(
                                  text: issue.displayName ?? "No Display Name"))
                              .toList(),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: widget.issueList
                                .map((issue) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.white,
                                                    AppColors.blueGray,
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomText().dynamicTxt(
                                                  txt:
                                                      'Category: ${issue.categoryType ?? "N/A"}',
                                                  color: AppColors.deepPurple,
                                                  fontSize: 14,
                                                ),
                                                if (issue.department != null)
                                                  CustomText().dynamicTxt(
                                                    txt:
                                                        'Department: ${issue.department}',
                                                    color: AppColors.deepPurple,
                                                    fontSize: 14,
                                                  ),
                                              ],
                                            ),
                                          ),
                                          if (issue.issueList != null &&
                                              issue.issueList!.isNotEmpty)
                                            const Divider(),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 10.0),
                                          ),
                                          if (issue.issueList != null)
                                            SizedBox(
                                              width: double.infinity,
                                              child: Wrap(
                                                spacing: 10,
                                                alignment: WrapAlignment.center,
                                                children: issue.issueList!
                                                    .map(
                                                      (subIssue) =>
                                                          GestureDetector(
                                                        onTap: () {
                                                          showIssueApplyDialog(
                                                            context: context,
                                                            title:
                                                                "Add Machine ${subIssue.displayName ?? ""}",
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            issue: subIssue,
                                                          );
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  15, 0, 15, 0),
                                                          width: 250,
                                                          height: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColors
                                                                .boldRed,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        35),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.2),
                                                                offset:
                                                                    const Offset(
                                                                        0, 3),
                                                                blurRadius: 8,
                                                              ),
                                                            ],
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 40,
                                                                height: 40,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white
                                                                      .withOpacity(
                                                                          0.2),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    const Icon(
                                                                  Icons.error,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 24,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  width: 15),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomText()
                                                                      .dynamicTxt(
                                                                    txt: subIssue
                                                                            .displayName ??
                                                                        "Button",
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                  CustomText()
                                                                      .dynamicTxt(
                                                                    txt:
                                                                        "${subIssue.categoryType} | ${subIssue.issueCode}",
                                                                    color: Colors
                                                                        .white70,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                    .toList(),
                                              ),
                                            )
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showErrorSelectorDialog({
  required BuildContext context,
  required String title,
  required List<SubIssueListEntity> issueList,
  required VoidCallback onClose,
  required double width,
  required double height,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorSelector(
        issueList: issueList,
        title: title,
        onClose: onClose,
        width: width,
        height: height,
      );
    },
  );
}

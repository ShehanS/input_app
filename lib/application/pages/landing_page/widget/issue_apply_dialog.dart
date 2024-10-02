import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/bloc/operation_data/operation_data_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:downtime_pro/infrastructure/domain/resource/model/factory_resource_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocConsumer<OperationDataBloc, OperationDataState>(
        listener: (outerContext, outerState) {},
        builder: (outerContext, outerState) => BlocBuilder<ApplicationBloc, ApplicationState>(builder: (innerContext, innerState)=> Dialog(
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
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
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
                  issue.issueList!.isNotEmpty
                      ? SizedBox(
                      child: SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          spacing: 10,
                          alignment: WrapAlignment.center,
                          children: issue.issueList!
                              .map(
                                (subIssue) => GestureDetector(
                              onTap: () {
                                showIssueApplyDialog(
                                  context: context,
                                  title:
                                  "Add Machine ${subIssue.displayName ?? ""}",
                                  width: double.infinity,
                                  height: double.infinity,
                                  issue: subIssue,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    15, 0, 15, 0),
                                width: 250,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: AppColors.boldRed,
                                  borderRadius:
                                  BorderRadius.circular(35),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.2),
                                      offset: const Offset(0, 3),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white
                                            .withOpacity(0.2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.error,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CustomText().dynamicTxt(
                                          txt: subIssue.displayName ??
                                              "Button",
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomText().dynamicTxt(
                                          txt:
                                          "${subIssue.categoryType} | ${subIssue.issueCode}",
                                          color: Colors.white70,
                                          fontSize: 12,
                                          fontWeight:
                                          FontWeight.normal,
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
                      ))
                      : Container(
                    decoration: const BoxDecoration(
                      // borderRadius: const BorderRadius.all(Radius.circular(10)),
                      // border: Border.all(color: AppColors.deepPurple, width: 2),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            CustomText().grey(
                                txt: "Select machine/ module",
                                fontSize: 15),
                            DropdownButton<ResourceEntity>(
                              value: innerState!.resource,
                              hint: CustomText().grey(
                                  txt: "Not select", fontSize: 15),
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple),
                              underline: const SizedBox(),
                              onChanged: (ResourceEntity? newValue) {
                                  innerContext.read<ApplicationBloc>().add(SelectResource(newValue!));
                              },
                              items: outerState!.resources
                              !.map<DropdownMenuItem<ResourceEntity>>(
                                      (ResourceEntity value) {
                                    return DropdownMenuItem<ResourceEntity>(
                                      value: value,
                                      child: CustomText()
                                          .grey(txt: value.resourceName ?? "No resource found", fontSize: 15),
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
        )));
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

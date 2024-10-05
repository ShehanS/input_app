import 'package:flutter/material.dart';
import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:downtime_pro/infrastructure/domain/global//color/globle_colors.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';

class SubList extends StatelessWidget {
  final SubIssueList subIssue;
  late List<SubIssueList> subIssueList = [];

  SubList({Key? key, required this.subIssue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: subIssue.issueList!.map((issue) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    subIssueList = issue.issueList!;
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.deepPurple,
                      borderRadius: BorderRadius.circular(35),
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
                          child: const Icon(
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
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText().dynamicTxt(
                              txt: "${issue.categoryType} | ${issue.issueCode}",
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          // Ensure ListView.builder is inside the Column widget
          SizedBox(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final issue = subIssueList[index];
                print("kkk");
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(issue?.displayName ?? "No Display Name"),
                );
              },
              shrinkWrap: true,
              itemCount: subIssue.issueList?.length ?? 0,
            ),
          ),
        ],
      ),
    );
  }
}

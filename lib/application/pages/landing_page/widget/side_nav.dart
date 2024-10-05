import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:downtime_pro/infrastructure/bloc/operation_data/operation_data_bloc.dart';
import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:downtime_pro/infrastructure/domain/global//color/globle_colors.dart';
import 'package:downtime_pro/application/widget/custom_button/list_item_button.dart';

import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocBuilder<ApplicationBloc, ApplicationState>(
        builder: (outerContext, outerState) {
          return BlocConsumer<OperationDataBloc, OperationDataState>(
            listener: (innerContext, innerState) {
              // Add listener logic here if needed
            },
            builder: (innerContext, innerState) {
              return Container(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(

                  border: Border.all(
                      color: AppColors.outlineBorderColor, width: 0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    CustomText().dynamicTxt(
                        txt: "Section",
                        color: AppColors.blueGray,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    const Divider(),
                    innerState.issueList.isNotEmpty
                        ? Expanded(
                            child: ListView.builder(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 16.0),
                              itemCount: innerState.issueList.length,
                              itemBuilder: (context, index) {
                                final buttonData = innerState.issueList[index];
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListItemButton(
                                    deptIssue: buttonData,
                                    icon: "",
                                    startColor: Color(
                                        int.parse(buttonData.color.toString())),
                                    endColor: AppColors.deepPurple,
                                    onPressed: () {
                                      innerContext.read<ApplicationBloc>().add(
                                          SelectDepartment(
                                              innerState.issueList[index]
                                                      .issueList
                                                  as List<SubIssueList>,
                                              buttonData.color as String));
                                    },
                                  ),
                                );
                              },
                            ),
                          )
                        : SizedBox(
                            child: Column(
                              children: [
                                const SizedBox(height: 50),
                                CustomText().dynamicTxt(
                                    txt: "No records",
                                    color: AppColors.blueGray,
                                    fontSize: 12),
                                const SizedBox(height: 10),
                                Image.asset(
                                    width: 50,
                                    height: 50,
                                    "assets/icons/no-file.png")
                              ],
                            ),
                          )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

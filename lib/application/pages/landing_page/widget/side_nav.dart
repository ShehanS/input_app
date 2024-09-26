import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../infrastructure/bloc/operation_data/operation_data_bloc.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';
import '../../../widget/custom_button/list_item_button.dart';

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
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Department',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 16.0),
                        itemCount: innerState.issueList.length,
                        itemBuilder: (context, index) {
                          final buttonData = innerState.issueList[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: ListItemButton(
                              deptIssue: buttonData,
                              icon: "",
                              startColor:
                                  Color(int.parse(buttonData.color.toString())),
                              endColor: AppColors.deepPurple,
                              onPressed: () {
                                innerContext.read<ApplicationBloc>().add(
                                    SelectDepartment(
                                        innerState.issueList[index].issueList
                                            as List<SubIssueListEntity>,
                                        buttonData.color as String));
                              },
                            ),
                          );
                        },
                      ),
                    ),
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

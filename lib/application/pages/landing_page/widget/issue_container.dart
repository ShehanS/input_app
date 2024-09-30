import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../infrastructure/bloc/application/application_bloc.dart';
import '../../../../infrastructure/bloc/operation_data/operation_data_bloc.dart';
import '../../../../infrastructure/const/custom_text.dart';
import '../../../../infrastructure/domain/globle/color/globle_colors.dart';
import 'issue_selector.dart';

class IssueContainer extends StatelessWidget {
  const IssueContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OperationDataBloc, OperationDataState>(
      listener: (outerContext, outerState) {},
      builder: (outerContext, outerState) => Expanded(
        flex: 9,
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.outlineBorderColor, width: 0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText().dynamicTxt(txt: "Issues", color: AppColors.blueGray, fontSize: 18, fontWeight: FontWeight.bold),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const IssueSelector(),
              ),
              BlocConsumer<ApplicationBloc, ApplicationState>(
                builder: (innerContext, innerState) {
                  final station = innerState.station;
                  String stationDisplayName = station != null
                      ? station.displayName
                      : 'No Station Selected';
                  return const Column(
                    children: [],
                  );
                },
                listener: (BuildContext ctx, ApplicationState state) {
                  outerContext.read<OperationDataBloc>().add(GetIssueList(
                      orgKey: state.station!.orgKey,
                      fetchPolicy: FetchPolicy.cacheAndNetwork));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

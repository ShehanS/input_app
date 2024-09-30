import 'package:downtime_pro/application/pages/landing_page/widget/issue_container.dart';
import 'package:downtime_pro/application/pages/landing_page/widget/issue_selector.dart';
import 'package:downtime_pro/application/pages/landing_page/widget/side_nav.dart';
import 'package:downtime_pro/infrastructure/bloc/operation_data/operation_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import '../../../infrastructure/bloc/application/application_bloc.dart';
import '../../../infrastructure/const/custom_text.dart';
import '../../../infrastructure/domain/globle/color/globle_colors.dart';
import '../../widget/custom_app_bar/custom_app_bar.dart';
import '../../widget/customize_dialog/custom_dialog.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
     context.read<ApplicationBloc>().add(const SetDefaultStation());
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: BlocConsumer<OperationDataBloc, OperationDataState>(
          listener: (outerContext, outerState) {
            if (outerState.errorDialogProps != null &&
                outerState.errorDialogProps!.isOpen) {
              showBasicDialog(
                width: 250,
                height: 180,
                context: context,
                title: 'Something happening..',
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/error.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomText().grey(
                          txt: outerState.errorDialogProps!.message,
                          fontSize: 12),
                    ),
                  ],
                ),
                onClose: () {
                  outerContext
                      .read<OperationDataBloc>()
                      .add(const ClearErrorDialogProps());
                },
              );
            }
          },
          builder: (outerContext, outerState) => Container(
                margin: const EdgeInsets.all(15),
                child: const Row(
                  children: [
                    SideNav(),
                    SizedBox(width: 10),
                    IssueContainer()
                    ,
                  ],
                ),
              )),
    );
  }
}

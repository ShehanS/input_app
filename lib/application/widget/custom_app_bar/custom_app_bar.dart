import 'package:downtime_pro/application/pages/landing_page/widget/station_selector.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../infrastructure/domain/globle/color/globle_colors.dart';
import '../../../infrastructure/services/localization_service.dart';
import '../customize_dialog/custom_dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openSelectStationDialog() {
      showBasicDialog(
        context: context,
        width: 250,
        height: 250,
        title: 'Select Station',
        content: StationSelector(),
        onClose: () {},
      );
    }

    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (innerContext, innerState) {
        return AppBar(
          title: CustomText().h1(txt: AppLocalizations.of(context).translate('Add Downtime'), color: AppColors.deepPurple),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  openSelectStationDialog();
                },
                icon: Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: AppColors.outlineBorderColor, width: 0.3)
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                          width: 30, height: 30, "assets/icons/location.png"),
                      const SizedBox(width: 5),
                      CustomText().primary(
                          txt:
                              "${innerState.station != null ? innerState.station?.displayName : 'No Station Selected'}",
                          fontSize: 16),
                    ],
                  ),
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            ),
          ],
        );
      },
    );
  }
}

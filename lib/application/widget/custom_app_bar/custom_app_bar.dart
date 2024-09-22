import 'package:downtime_pro/application/pages/landing_page/widget/station_selector.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (innerContext, innerState) => AppBar(
              title:
                  Text(AppLocalizations.of(context).translate('Add Downtime')),
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  );
                },
              ),
              actions: <Widget>[
                InkWell(
                    child: Text("Station ${innerState.station?.displayName}"),
                    onTap: () {
                      openSelectStationDialog();
                    }),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                )
              ],
            ));
  }
}

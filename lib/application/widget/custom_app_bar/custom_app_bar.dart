import 'package:downtime_pro/application/widget/custom_drawer/custom_app_drawer.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../infrastructure/bloc/localization/localization_bloc.dart';
import '../../../infrastructure/services/localization_service.dart';
import '../dialog/customize_dialog/custom_dialog.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizationBloc = BlocProvider.of<LocalizationBloc>(context);
    return AppBar(
      title: Text(AppLocalizations.of(context).translate('Add Downtime')),
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
            child: const Text("Line"),
            onTap: () {
              showCustomDialog(context, 'This is a reusable dialog', 'Close');
            }),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
        )
        // IconButton(
        //   icon: const Icon(Icons.add_alert),
        //   tooltip: 'Show Snackbar',
        //   onPressed: () {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //         const SnackBar(content: Text('This is a snackbar')));
        //   },
        // ),
        // IconButton(
        //   icon: const Icon(Icons.navigate_next),
        //   tooltip: 'Go to the next page',
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute<void>(
        //       builder: (BuildContext context) {
        //         return Scaffold(
        //           drawer: const CustomAppDrawer(),
        //           appBar: AppBar(
        //             title: const Text('Next page'),
        //           ),
        //           body: Center(
        //               child: Row(
        //             children: [
        //               ElevatedButton(
        //                 onPressed: () {
        //                   localizationBloc
        //                       .add(const ChangeLocalization(Locale('es')));
        //                 },
        //                 child: Text(
        //                     AppLocalizations.of(context).translate('welcome'),
        //                     style: const TextStyle(fontSize: 24)),
        //               ),
        //               ElevatedButton(
        //                 onPressed: () {
        //                   localizationBloc
        //                       .add(const ChangeLocalization(Locale('en')));
        //                 },
        //                 child: Text(
        //                     AppLocalizations.of(context).translate('welcome'),
        //                     style: const TextStyle(fontSize: 24)),
        //               ),
        //             ],
        //           )),
        //         );
        //       },
        //     ));
        //   },
        // ),
      ],
    );
  }
}

class CustomizedDialog extends StatelessWidget {
  const CustomizedDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is a typical dialog.'),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}

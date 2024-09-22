import 'dart:convert';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/bloc/operation_data/operation_data_bloc.dart';
import 'package:downtime_pro/infrastructure/const/app_const.dart';
import 'package:downtime_pro/infrastructure/const/custom_text.dart';
import 'package:downtime_pro/infrastructure/domain/app_config/entity/app_config_entity.dart';
import 'package:downtime_pro/infrastructure/domain/globle/color/globle_colors.dart';
import 'package:downtime_pro/infrastructure/domain/globle/model/station_model.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widget/customize_dialog/custom_dialog.dart';

class StationSelector extends StatefulWidget {
  StationSelector({Key? key}) : super(key: key);

  @override
  _StationSelectorState createState() => _StationSelectorState();
}

class _StationSelectorState extends State<StationSelector> {
  final storageService = StorageService();
  late List<StationModel> stations = [];

  @override
  void initState() {
    super.initState();
    getConfig();
  }

  Future<void> getConfig() async {
    try {
      final config = await storageService.getValue(AppConstants.APP_CONFIG);
      if (config != null) {
        final jsonConfig = jsonDecode(config);
        final appConfig = AppConfigEntity.fromJson(jsonConfig);
        setState(() {
          stations = (appConfig.masterData as List<dynamic>)
              .map((item) => StationModel.fromJson(item))
              .toList();
        });
      }
    } catch (e) {
      print('Error retrieving config: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: BlocBuilder<ApplicationBloc, ApplicationState>(
            builder: (innerContext, innerState) {
          return BlocBuilder<OperationDataBloc, OperationDataState>(
              builder: (innerContext1, innerState1) => Column(
                    children: [
                      for (StationModel station in stations)
                        RadioListTile<StationModel>(
                          key: ValueKey(station.id),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText().dynamicTxt(
                                txt: station.displayName,
                                color: AppColors.deepPurpleDark,
                                align: TextAlign.left,
                                fontSize: 18,
                              ),
                            ],
                          ),
                          value: station,
                          groupValue: innerState.station,
                          onChanged: (StationModel? newValue) {
                            showYesNoDialog(
                              width: 300,
                              height: 150,
                              context: context,
                              title: 'Confirm Action',
                              content: SizedBox(
                                width: 300,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/icons/error.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    CustomText().grey(
                                      txt: "Do you want to change the station?",
                                      fontSize: 12,
                                    ),
                                  ],
                                ),
                              ),
                              onYes: () {
                                innerContext
                                    .read<ApplicationBloc>()
                                    .add(ChangeStation(newValue!));
                                innerContext1.read<OperationDataBloc>().add(
                                    GetIssueList(orgKey: newValue.orgKey!));
                              },
                              onNo: () {},
                              onClose: () {},
                            );
                          },
                        ),
                    ],
                  ));
        }),
      ),
    );
  }
}

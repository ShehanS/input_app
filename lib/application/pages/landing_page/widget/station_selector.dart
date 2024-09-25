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

class StationSelector extends StatelessWidget {
  final storageService = StorageService();

  StationSelector({Key? key}) : super(key: key);

  Future<List<StationModel>> getConfig() async {
    try {
      final config = await storageService.getValue(AppConstants.APP_CONFIG);
      if (config != null) {
        final jsonConfig = jsonDecode(config);
        final appConfig = AppConfigEntity.fromJson(jsonConfig);
        return (appConfig.masterData as List<dynamic>)
            .map((item) => StationModel.fromJson(item))
            .toList();
      }
    } catch (e) {
      print('Error retrieving config: $e');
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StationModel>>(
        future: getConfig(),
        builder: (context, snapshot) {
          final stations = snapshot.data!;
          return Scrollbar(
            child: SingleChildScrollView(
              child: BlocBuilder<ApplicationBloc, ApplicationState>(
                  builder: (innerContext, innerState) {
                return BlocConsumer<OperationDataBloc, OperationDataState>(
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
                          onClose: () async {
                            outerContext
                                .read<OperationDataBloc>()
                                .add(const ClearErrorDialogProps());
                          },
                        );
                      }
                    },
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/icons/error.png",
                                            width: 50,
                                            height: 50,
                                          ),
                                          CustomText().grey(
                                            txt:
                                                "Do you want to change the station?",
                                            fontSize: 12,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onYes: () {
                                      innerContext
                                          .read<ApplicationBloc>()
                                          .add(ChangeStation(newValue!));
                                      // innerContext1
                                      //     .read<OperationDataBloc>()
                                      //     .add(GetIssueList(
                                      //         orgKey: newValue.orgKey!));
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
        });
  }
}

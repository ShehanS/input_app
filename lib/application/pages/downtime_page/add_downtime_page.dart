import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/create_downtime/model/downtime_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../infrastructure/const/custom_text.dart';
import '../../widget/custom_app_bar/custom_app_bar.dart';

@RoutePage()
class AddDowntimePage extends StatelessWidget {
  const AddDowntimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double columnWidth = screenWidth / 5;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: BlocBuilder<ApplicationBloc, ApplicationState>(
          builder: (outerContext, outerState) => Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Downtime",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: outerState.downtimeEventList!.map((event) {
                          final index =
                              outerState.downtimeEventList!.indexOf(event);
                          final countdown = event
                              .seconds; // Assuming `countdown` is a property of your event

                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Event: ${event?.issue}',
                                  // Assuming `name` is a property of your event
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Time left: ${countdown ?? "0"} s',
                                ),

                                ElevatedButton(
                                    onPressed: () {
                                      outerContext
                                          .read<ApplicationBloc>()
                                          .add(PauseDowntime(index));
                                    },
                                    child: Text("Pause ${index}")),
                                ElevatedButton(
                                    onPressed: () {
                                      outerContext
                                          .read<ApplicationBloc>()
                                          .add(ResumeDowntime(index));
                                    },
                                    child: Text("Resume ${index}")),
                                ElevatedButton(
                                    onPressed: () {
                                      outerContext
                                          .read<ApplicationBloc>()
                                          .add(StopDowntime(index));
                                    },
                                    child: Text("Stop ${index}"))

                              ],
                            ),
                          );
                        }).toList(), // Make sure to convert the Iterable to a List
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        // child: Table(
                        //   columnWidths: {
                        //     0: FixedColumnWidth(columnWidth),
                        //     1: FixedColumnWidth(columnWidth),
                        //     2: FixedColumnWidth(columnWidth),
                        //     3: FixedColumnWidth(columnWidth),
                        //   },
                        //   children: [
                        //     // Table header
                        //     TableRow(
                        //       children: [
                        //         tableHeader('EPF Number'),
                        //         tableHeader('Create AT'),
                        //         tableHeader('Category'),
                        //         tableHeader('Issue'),
                        //       ],
                        //     ),
                        //     for (var event in outerState.downtimeEventList
                        //         as List<DowntimeEvent>)
                        //       TableRow(
                        //         children: [
                        //           tableCell(event.countdown!.seconds ?? ""),
                        //           tableCell(event.createAt.toString()),
                        //           tableCell(event.issue!.categoryType),
                        //           tableCell(event.issue!.displayName ?? ""),
                        //         ],
                        //       ),
                        //   ],
                        // ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }

  Widget tableHeader(String text) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomText()
            .dynamicTxt(txt: text, color: Colors.blue, fontSize: 18));
  }

  Widget tableCell(String text) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomText()
            .dynamicTxt(txt: text, color: Colors.black38, fontSize: 15));
  }
}

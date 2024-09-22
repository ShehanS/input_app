import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:downtime_pro/application/widget/custom_button/list_item_button.dart';
import 'package:auto_route/auto_route.dart';
import '../../../infrastructure/bloc/application/application_bloc.dart';
import '../../widget/custom_app_bar/custom_app_bar.dart';
@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.teal,
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
      Colors.cyan,
      Colors.indigo,
      Colors.brown,
    ];

    final List<Map<String, dynamic>> buttonsData = List.generate(
      10,
          (index) => {
        'text': 'Button ${index + 1}',
        'description': 'Description for button ${index + 1}',
        'icon': 'assets/icons/icon${index + 1}.svg',
        'color': colors[index],
      },
    );

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(),
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Department',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 16.0),
                          itemCount: buttonsData.length,
                          itemBuilder: (context, index) {
                            final buttonData = buttonsData[index];
                            return Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 5.0),
                              child: ListItemButton(
                                text: buttonData['text'] ?? 'No Text',
                                description: buttonData['description'],
                                icon: buttonData['icon'],
                                color: buttonData['color'],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Engineering',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      BlocBuilder<ApplicationBloc, ApplicationState>(
                        builder: (innerContext, innerState) {
                          final station = innerState.station;
                          String stationDisplayName =
                          station != null ? station.displayName : 'No Station Selected';
                          return Column(
                            children: [
                              Text("$stationDisplayName"),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
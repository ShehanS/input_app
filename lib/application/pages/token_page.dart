import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/application/pages/landing_page.dart';
import 'package:downtime_pro/application/router/router.dart';
import 'package:downtime_pro/infrastructure/bloc/app_config/app_config_bloc.dart';
import 'package:downtime_pro/infrastructure/services/graphql_service.dart';
import 'package:downtime_pro/infrastructure/services/storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../infrastructure/injection/injection.dart';

@RoutePage()
class TokenPage extends StatelessWidget {
  const TokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storageService = StorageService();

    final TextEditingController tokenController = TextEditingController();
    return BlocBuilder<AppConfigBloc, AppConfigState>(
      builder: (innerContext, innerState) {
        return Scaffold(
            body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Image.asset(
                "assets/logos/logo.png",
                width: 250,
                height: 150,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/img.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 650,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 350,
                          child: TextField(
                            controller: tokenController,
                            decoration: InputDecoration(
                                hintText: "Enter Token",
                                hintStyle: const TextStyle(color: Colors.grey),
                                // Customize hint text color
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 20.0),
                                // Add padding inside the text field
                                filled: true,
                                fillColor: Colors.grey[200],
                                // Background color of the text field
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  // Rounded corners
                                  borderSide: BorderSide
                                      .none, // Remove border by default
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                      width: 1.5), // Border when enabled
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                      width: 1.0), // Border when focused
                                ),
                                suffixIcon: Stack(children: [
                                  Positioned(
                                      child: Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.grey, width: 1)),
                                    child: IconButton(
                                      icon: Image.asset(
                                          "assets/images/arraow.png",
                                          fit: BoxFit.fill,
                                          width: 55,
                                          height: 55),
                                      onPressed: () {
                                        storageService
                                            .getValue("appConfig")
                                            .then((value) => {print("saved ${value}")});

                                        innerContext.read<AppConfigBloc>().add(
                                            GetAppConfig(
                                                token: tokenController.text));
                                        // if(innerState.appConfig != null) {
                                        //   Navigator.pushReplacement(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const LandingPage()),
                                        //   );
                                        // }
                                      },
                                    ),
                                  ))
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
      },
    );
  }
}

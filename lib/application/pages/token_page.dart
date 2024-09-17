import 'package:downtime_pro/infrastructure/bloc/app_config/app_config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppConfigBloc, AppConfigState>(
        builder: (innerContext, innerState) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Welcome"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 250,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(hintText: "Enter Token"),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () => {
                          innerContext
                              .read<AppConfigBloc>()
                              .add(const GetAppConfig(token: "test"))
                        }, child: const Text("Enter")),

                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

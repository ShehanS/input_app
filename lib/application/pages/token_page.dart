import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/infrastructure/bloc/app_config/app_config_bloc.dart';
import '../../infrastructure/const/custom_text.dart';
import '../../infrastructure/domain/globle/color/globle_colors.dart';
import '../widget/dialog/customize_dialog/custom_dialog.dart';

@RoutePage()
class TokenPage extends StatelessWidget {
  const TokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController tokenController = TextEditingController();
    final ValueNotifier<bool> isButtonEnabled = ValueNotifier(false);

    return BlocConsumer<AppConfigBloc, AppConfigState>(
      listener: (innerContext, innerState) {
        if (innerState.errorDialogProps != null &&
            innerState.errorDialogProps!.isOpen) {
          showCustomDialog(
              context,
              'Something happening..',
              'Close',
              SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/error.png",
                      width: 50,
                      height: 50,
                    ),
                    CustomText().grey(
                      txt: innerState.errorDialogProps!.message,
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
              () => {
                    innerContext
                        .read<AppConfigBloc>()
                        .add(const ClearErrorDialogProps())
                  });
        }
      },
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
                    'assets/images/background.png',
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
                              onChanged: (value) {
                                isButtonEnabled.value = value.isNotEmpty;
                              },
                              decoration: InputDecoration(
                                hintText: "Enter Token",
                                hintStyle: const TextStyle(color: Colors.grey),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 20.0),
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 1.5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 1.0),
                                ),
                                suffixIcon: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // CircularProgressIndicator with gradient
                                    if (innerState
                                        .isLoading) // Show when loading
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              deepPurpleDark,
                                              deepPurpleLight,
                                              boldRed,
                                              boldRedLight,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: const CircularProgressIndicator(
                                          strokeWidth: 10.0,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.white),
                                        ),
                                      ),
                                    // IconButton with styling
                                    Positioned(
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        margin: const EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1,
                                          ),
                                        ),
                                        child: ValueListenableBuilder<bool>(
                                          valueListenable: isButtonEnabled,
                                          builder: (context, isEnabled, _) {
                                            return IconButton(
                                              icon: Opacity(
                                                opacity: isEnabled ? 1 : 0.5,
                                                child: Image.asset(
                                                  "assets/images/arrow.png",
                                                  fit: BoxFit.fill,
                                                  width: 55,
                                                  height: 55,
                                                ),
                                              ),
                                              onPressed: isEnabled
                                                  ? () {
                                                      innerContext
                                                          .read<AppConfigBloc>()
                                                          .add(GetAppConfig(
                                                              token:
                                                                  tokenController
                                                                      .text));
                                                    }
                                                  : null,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

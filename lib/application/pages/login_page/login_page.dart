import 'package:auto_route/auto_route.dart';
import 'package:downtime_pro/infrastructure/domain/globle/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/const/custom_text.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login Page"),
            ElevatedButton(onPressed: (){
              context.router.navigate(const LandingRoute());
            }, child: CustomText().dynamicTxt(txt: "Goto Landing Page", color: Colors.blueGrey))
          ],
        ),
      ) ,
    );
  }
}

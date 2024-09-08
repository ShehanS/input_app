import 'package:downtime_pro/infrastructure/bloc/user_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/user/model/user_model.dart';
import 'package:downtime_pro/infrastructure/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
        create: (ctx) => getIt<UserBloc>(),
        child: Scaffold(
          body: BlocBuilder<UserBloc, UserState>(
              builder: (innerContext, innerState) {
                return Center(
                  child: Row(
                    children: [
                      const Text("Create User"),
                      ElevatedButton(onPressed: () =>
                      {
                        innerContext.read<UserBloc>().add(CreateUser(UserModel(
                            username: "Shehan",
                            email: "shehan.salinda@92@gmail.com",
                            contact: "0712470327")))
                      }, child: const Text("Create"))
                    ],
                  ),
                );
              }),
        )
    );
  }
}

import 'package:downtime_pro/application/widget/custom_app_bar/custom_app_bar.dart';
import 'package:downtime_pro/infrastructure/bloc/metadata/meta_data_bloc.dart';
import 'package:downtime_pro/infrastructure/services/graphql_service.dart';
import 'package:downtime_pro/infrastructure/bloc/user/user_bloc.dart';
import 'package:downtime_pro/infrastructure/domain/user/model/user_model.dart';
import 'package:downtime_pro/infrastructure/injection/injection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../infrastructure/bloc/localization/localization_bloc.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider<MetaDataBloc>(
      create: (ctx) => getIt<MetaDataBloc>(),
      child: Scaffold(
        appBar:PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight), child:  CustomAppBar()),
        body: BlocBuilder<MetaDataBloc, MetaDataState>(
          builder: (innerContext, innerState) {
            return Center(
              child: Row(
                children: [
                  const Text("Create User"),
                  ElevatedButton(
                    onPressed: () {
                      innerContext
                          .read<MetaDataBloc>()
                          .add(const GetFactoryIssueList("test", "*"));
                    },
                    child: const Text("Create"),
                  ),
                  BlocConsumer<MetaDataBloc, MetaDataState>(
                    builder: (context, state) {
                      if (state.factoryIssueList == null) {
                        // Display a loading indicator or empty state
                        return const Center(child: CircularProgressIndicator());
                      } else if (state.factoryIssueList!.isEmpty) {
                        // Display a message if there are no items
                        return const Center(child: Text('No issues found.'));
                      } else {
                        // Display the list of factory issues
                        return Text(state.factoryIssueList!.first.issueList.toString());
                      }
                    },
                    listener: (context, state) {
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:downtime_pro/infrastructure/bloc/application/application_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IssueSelector extends StatelessWidget {
  const IssueSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      builder: (innerContext, innerState) {
        return Wrap(
          children: innerState.deptIssueList!.map((issue) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Chip(
                label: Text(issue.displayName ?? 'No Name'),
                backgroundColor: Colors.teal,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

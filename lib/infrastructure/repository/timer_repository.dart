import 'dart:developer';

import 'package:injectable/injectable.dart';

abstract class TimerRepository {
  Stream<int> startTimer({int? createAt});
}

@LazySingleton(as: TimerRepository)
class TimerRepositoryImplements implements TimerRepository {
  @override
  // Stream<int> startTimer({int? createAt}) async* {
  //   final now = DateTime.now();
  //   final microSecondVal = DateTime.fromMicrosecondsSinceEpoch(createAt ?? 0);
  //   Duration difference = microSecondVal.difference(now);
  //   try {
  //     if (difference.isNegative) {
  //       difference = difference.abs();
  //     }
  //     final intervalTickerStream = Stream.periodic(
  //       const Duration(seconds: 1),
  //       (x) => difference.inSeconds - x - 1,
  //     ).take(difference.inSeconds);
  //     yield* intervalTickerStream;
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  Stream<int> startTimer({int? createAt}) async* {
    int count = createAt ?? 0;
    try {
      yield* Stream.periodic(
        const Duration(seconds: 1),
            (_) => ++count,
      );
    } catch (e) {
      log(e.toString());
    }
  }

}

import 'package:injectable/injectable.dart';
import 'dart:async';

@singleton
class CounterService {
  final Map<String, Timer> _counters = {};
  final Map<String, int> _elapsedTimes = {};

  int getElapsedTime(String counterId) {
    return _elapsedTimes[counterId] ?? 0;
  }

  // Format the elapsed time into hh:mm:ss
  String formatElapsedTime(String counterId) {
    int seconds = getElapsedTime(counterId);
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  void startCounter(String counterId) {
    if (_counters.containsKey(counterId) && _counters[counterId]!.isActive) {
      return; // Counter is already running
    }

    _counters[counterId] = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _elapsedTimes[counterId] = (_elapsedTimes[counterId] ?? 0) + 1;
      print("Counter $counterId: ${formatElapsedTime(counterId)}");
    });
  }

  void stopCounter(String counterId) {
    if (_counters.containsKey(counterId)) {
      _counters[counterId]!.cancel();
    }
  }

  void resetCounter(String counterId) {
    if (_counters.containsKey(counterId)) {
      _counters[counterId]!.cancel();
    }
    _elapsedTimes[counterId] = 0;
    print("Counter $counterId reset");
  }

  void dispose() {
    for (var timer in _counters.values) {
      timer.cancel();
    }
    _counters.clear();
    _elapsedTimes.clear();
  }
}

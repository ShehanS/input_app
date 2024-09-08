import 'package:injectable/injectable.dart';

@singleton
class CounterService {
  int _counter = 0;

  int increment() => ++_counter;

  void updateCount(){
    _counter += 1;
  }
}

import 'dart:math';

import 'package:dart_learn/rx.dart';

const int MAX_ELEMENTS_COUNT = 15;

void main() {
  Stream myStream1 = createStream();

  myStream1
      .where((number) => number % 2 == 0)
      .listen((number) {
    print('Listener 1: $number');
  });

  Stream myStream2 = createStream();

  myStream2
      .map((number) => pow(number, 2))
      .listen((number) {
    print('Listener 2: $number');
  });

  Stream myStream3 = createStream();

  myStream3
      .take(MAX_ELEMENTS_COUNT)
      .map((number) => pow(number, 2))
      .where((number) => number % 3 == 0)
      .listen((number) {
    print('Listener 3: $number');
  });
}
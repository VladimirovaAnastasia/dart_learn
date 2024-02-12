import 'dart:async';

const int MAX_TICKS_COUNT = 20;
const int PERIOD_DURATION = 1;

Stream createStream() {
  final streamController = StreamController();

  int i = 0;

  Timer.periodic(Duration(seconds: PERIOD_DURATION), (timer) {
    streamController.sink.add(i++);

    // Ограничиваем время работы таймера
    if (i == MAX_TICKS_COUNT) {
      timer.cancel();
      streamController.close();
    }
  });

  return streamController.stream;
}
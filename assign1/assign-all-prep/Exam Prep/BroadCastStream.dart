import 'dart:async';
import 'dart:math';

Stream<int> generateRandomNumbers() async* {
  Random random = Random();
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextInt(100);
  }
}

void main() {
  Stream<int> randomNumbers = generateRandomNumbers();

  Stream<int> broadcastStream = randomNumbers.asBroadcastStream();

  broadcastStream.listen((number) {
    print('Listener 1 received: $number');
  });

  broadcastStream.listen((number) {
    print('Listener 2 received: $number');
  });

  Future.delayed(Duration(seconds: 10), () {
    print('Stopping streams...');
    broadcastStream.drain();
  });
}

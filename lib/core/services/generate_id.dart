import 'dart:math';

int generateRandomNumber() {
  Random random = Random();
  return 10000000 + random.nextInt(90000000);
}

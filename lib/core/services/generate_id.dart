import 'dart:math';
 
// generate 8 digit random number used to create Unique Id.

int generateRandomNumber() {
  Random random = Random();
  return 10000000 + random.nextInt(90000000);
}

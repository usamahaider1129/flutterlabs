import 'package:lab1_q3/lab1_q3.dart' as lab1_q3;
import 'dart:math';

// Usama Haider
// 19-NTU-CS-1129

// Display the random number between 1 to 100
void main() {
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;
  print('Random Number : $randomNumber ');
}

/*
Giải phương trình ax^2 + bx + c = 0
 */
import 'dart:io';
import 'dart:math';

void main() {
  double a;
  double b;
  double c;

  //Nhập a
  do {
    stdout.write('Nhập a (không phải 0): ');
    String? inputA = stdin.readLineSync()!;
    a = double.tryParse(inputA) ?? 0;
  } while (a == 0);

  //Nhập b
  stdout.write('Nhập b: ');
  String? inputB = stdin.readLineSync()!;
  b = double.tryParse(inputB) ?? 0;

  //Nhập c
  stdout.write('Nhập c: ');
  String? inputC = stdin.readLineSync()!;
  c = double.tryParse(inputC) ?? 0;

  //Hiển thị phương trình
  print('Phương trình: ${a}x^2 + ${b}x + ${c} = 0');

  //Tính delta
  double delta = b * b - 4 * a * c;
  if (delta < 0) {
    print('Phương trình vô nghiệm');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình vô nghiệm kép: x = $x');
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có 2 nghiệm:');
    print('x1 = $x1, x2 = $x2');
  }
}

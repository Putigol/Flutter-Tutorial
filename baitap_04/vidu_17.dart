import 'dart:io';

void main() {
  // int number = 100;
  // if (number % 2 == 0) {
  //   print("Đây la số chẵn !");
  // } else {
  //   print("Đây la số lẻ !");
  // }
  int thang = int.parse(stdin.readLineSync()!);
  int nam = int.parse(stdin.readLineSync()!);
  switch (thang) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("Tháng $thang có 31 ngày");
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print("Tháng $thang có 30 ngày");
      break;
    default:
      if (nam % 4 == 0 && nam % 100 != 0 || nam % 400 == 0)
        print("Tháng $thang có 29 ngày");
      else
        print("Tháng $thang có 28 ngày");
  }
}

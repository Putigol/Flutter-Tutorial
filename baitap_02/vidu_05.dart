import 'dart:io';

void main() {
  //Nhập tên người dụng
  stdout.write('Nhập tên của bạn: ');
  String name = stdin.readLineSync()!; // !: không cho null
  // stdout.writeln('Ten: $name');

  //Nhập tuổi người dùng
  stdout.write('Nhập tuổi của bạn: ');
  int age = int.parse(stdin.readLineSync()!); // parse: chuyển kiểu data
  // stdout.write('Tuoi: $age');
  print('Ten: $name, Tuoi: $age');
}

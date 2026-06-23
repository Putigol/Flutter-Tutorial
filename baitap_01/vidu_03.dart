//??=: sẽ gán giá trị nếu biến đang null
void main() {
  int? b;
  b = null;
  b ??= 10;
  print('b=$b');
  b ??= 20;
  print('b=$b');
}

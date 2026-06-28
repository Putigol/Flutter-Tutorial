void main() {
  // Vòng lặp for
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  // Iterable: List, Set
  // for-in
  var names = ['Nguyen Van A', 'Nguyen Van B', 'Nguyen Van C'];
  for (var name in names) {
    print(name);
  }

  //foreach
  names.forEach((name) => print(name));

  // Vòng lặp while
  var i = 1;
  while (i <= 8) {
    print(i);
    i++;
  }

  // Vòng lặp do-while (thực hiện ít nhất 1 lần)
  var x = 1;
  do {
    print(x);
    x++;
  } while (x <= 5);

  // break / continue

  // break: thoát khỏi vòng lặp ngay lập tức
  print("-----");
  x = 1;
  do {
    print(x);
    x++;
    if (x == 3) break;
  } while (x <= 6);
  print("-----");

  // continue:  dùng để bỏ qua phần còn lại của vòng lặp hiện tại và tiếp tục với lần lặp tiếp theo
  print("-----");
  x = 0;
  do {
    x++;
    if (x == 3) continue;
    print(x);
  } while (x <= 7);
  print("-----");
}

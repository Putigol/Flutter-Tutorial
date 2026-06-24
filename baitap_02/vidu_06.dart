void main() {
  //int: kiểu số nguyên
  int x = 100;
  //double: kiểu số thị giá
  double y = 100.5;
  //num: có thể chứa số nguyên và số thực
  num z = 10;
  num t = 10.65;

  print(x);
  print(y);
  print(z);
  print(t);

  //Chuyển chuỗi sang số nguyên
  var one = int.parse('1');
  print(one == 1 ? 'TRUE' : 'FALSE');

  //Chuyển chuỗi sang số thực
  var onePointOne = double.parse('1.1');
  print(onePointOne == 1.1 ? 'TRUE' : 'FALSE');

  //Chuyển số nguyên sang chuỗi
  String oneAsString = 1.toString();
  print(oneAsString);

  //Chuyển số thực sang chuỗi
  String piAsString = 3.14159.toStringAsFixed(2); //làm tròn
  print(piAsString);
}

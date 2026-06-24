/*
expr1 ? expr2 : expr3
Nếu expr1 đúng, trả về expr; ngược lại trả về expr3
*/

void main() {
  var kiemTra = (100 % 2 == 0) ? "100 là số chẵn" : "100 là số lẻ";
  print(kiemTra);

  /*
expr1 ?? expr2
Nếu expr1 không null, trả về expr1; ngược lại trả về expr2 
*/
  var x = 100;
  var y = x ?? 200;
  print(y);

  int? z;
  y = z ?? 200;
  print(y);
}

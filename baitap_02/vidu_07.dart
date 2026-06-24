/*
Chuỗi là 1 tập hợp ký tự UTF-16.
*/

void main() {
  var firstString = "Nguyễn Phúc Thịnh"; //""
  var secondString = 'Nguyễn Phúc Thịnh'; // ''

  print(firstString);
  print(secondString);

  //Chèn giá trị của 1 biểu thức, biến vào trong chuỗi: ${biểu thức}
  double diemToan = 9.6;
  double diemVan = 8.5;
  var thirdString =
      'Xin chào $firstString, điểm toán là $diemToan, điểm văn là $diemVan';
  print(thirdString);

  //Tạo ra chuỗi nằm ở nhiều dòng
  var fourthString = '''
  Nam quốc sơn hà, nam đế cư,
  Tuyệt nhiên định phận tại thiên thư,
  Như hà nghịch lỗ lai xâm phạm,
  Nhữ đẳng hành khan, thủ bại hư.
  ''';
  print(fourthString);

  //Xuống dòng
  var fifthString = "Chuẩn bị \n xuống dòng";
  print(fifthString);

  //Nối chuỗi
  var sixthString = "Xin chào" + "quý khách hàng";
  print(sixthString);

  var seventhString =
      "Xin chào"
      "quý khách hàng";
  print(seventhString);
}

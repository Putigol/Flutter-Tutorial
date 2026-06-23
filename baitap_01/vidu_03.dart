void main() {
  Object obj = "Hello World";
  //Kiểm tra obj có phải là chuỗi hay không
  if (obj is String) print(obj.length);

  //Kiểm tra obj không phải kiểu int
  if (obj is! int) print(obj);

  Object obj2 = 10;
  //Kiểm tra obj2 có phải kieu int hay khong
  if (obj2 is int) print(obj2);

  //Ép kiểu
  String str = obj as String;
  print(str.toUpperCase());
}

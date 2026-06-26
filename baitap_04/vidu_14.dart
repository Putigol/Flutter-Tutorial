/*
Records là một kiểu dữ liệu tổng hợp (composite type) được giới thiệu trong Dart 3.0
cho phép nhóm nhiều giá trị có kiểu khác nhau thành một đơn vị duy nhất. 
Records là immutable - nghĩa là không thể thay đổi sau khi được tạo.
*/
void main() {
  //Định nghĩa person
  var firstRecord = (
    name: 'Nguyen Van A',
    age: 20,
    address: 'Ha Noi',
  ); //Trực tiếp
  print(firstRecord);

  //Định nghĩa record có 2 giá trị
  var point = (123, 456); //x,y
  print(point);

  //Truy cập giá trong record
  //Dùng chỉ số (nếu ko có key)
  print(point.$1); //123

  //Dùng tên (có tên key rõ ràng)
  print(firstRecord.name); //Nguyen Van A
  print(firstRecord.age); //20
}

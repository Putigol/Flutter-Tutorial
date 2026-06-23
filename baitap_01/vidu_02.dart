/*Cách khai báo biến:
  -Sử dụng "var" để Dart tự suy luận kiểu.
  -Khai báo với kiểu cụ thể.
  -Khai báo bằng kiểu object.
 */

void main() {
  //Tự suy luận kiểu
  var ten = "Thịnh"; //String
  var tuoi = 20; //int

  //Khai báo với kiểu dữ liệu cụ thể
  String name = "Nguyen Van A";
  int age = 20;

  //Khai báo bằng kiểu object
  Object obj = "Nguyen Van A";
  print(obj);

  print("Ten: $name");
  print("Tuoi: $age");
  print("Ten: $ten");
  print("Tuoi: $tuoi");
}

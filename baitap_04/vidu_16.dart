/*
Dart là một ngôn ngữ thuần hướng đối tượng, vì vậy ngay cả các hàm cũng là đối
tượng và có kiểu Function. 
Điều này có nghĩa là các hàm có thể được gán cho các biến hoặc truyền làm tham số cho các hàm khác.
Ta cũng có thể gọi một thể hiện (instance) của một lớp Dart như thể nó là một hàm.
*/

/*
Hàm là một khối lệnh thực hiện một tác vụ gì đó, khối lệnh này được dùng nhiều
lần nên gom chúng tại thành một hàm.
*/
//Viết đầy đủ
int tinhTong(int a, int b) {
  return a + b;
}

//Sử dụng cú pháp rút gọn (arrow function)
int tinhHieu(int a, int b) => a - b;

// => expression là cách viết gọn của { return expression; }

/*
Lưu ý: Chỉ có biểu thức (expression) đứng đằng sau =>, không áp dụng cho câu
lệnh (statement).
Ví dụ: Ta không thể để if statement đằng sau => được. Tuy nhiên ta có thể sử
dụng toán tử ba ngôi:
condition ? expr1 : expr2
*/

//Hàm với tên của tham số
// Khi gọi 1 hàm (function), ta có truyền giá trị thông qua tên biến paramName: value.
String createFullName({String ho = '', String chuLot = '', String ten = ''}) =>
    ho + ' ' + chuLot + ' ' + ten;

//Tham số tuỳ chọn (có hay không cũng được)
/*
Các tham số tùy chọn trong hàm cho phép ta gọi hàm mà không cần cung cấp đầy
đủ tất cả các tham số. Khi các tham số tùy chọn không được cung cấp, chúng sẽ nhận
giá trị null theo mặc định.
Để khai báo các tham số tùy chọn, ta sử dụng dấu ngoặc
vuông [].
*/

int tinhTich(int a, [int? b, int? c, int? d]) {
  var result = a;
  result *= (b != null) ? b : 1;
  result *= (c != null) ? c : 1;
  result *= (d != null) ? d : 1;
  return result;
}

// Hàm ẩn danh
/*
Trong Dart, ta có thể tạo các hàm không có tên gọi là hàm ẩn danh, hay còn gọi
là lambda hoặc closure.

Chúng thường được sử dụng trong các ngữ cảnh mà ta không
cần sử dụng tên hàm, ví dụ như khi truyền hàm như tham số cho hàm khác.

Để tạo hàm ẩn danh, ta có thể sử dụng cú pháp tương tự như khi khai báo hàm
có tên, nhưng bỏ qua phần kiểu trả về và tên hàm
*/

// (var a, var b){
//   return a+b;
// }

// (var a, var b)=>{
//   return a+b;
// }

//Hàm main(): khởi đầu ứng dụng
void main() {
  print("Hello World");
  var tong = tinhTong(2, 3); //Gán 2, 3 cho a, b
  var hieu = tinhHieu(2, 7);
  var hoTen = createFullName(ten: 'Thịnh', chuLot: 'Phúc', ho: 'Nguyễn');
  print(tong);
  print(hieu);
  print(hoTen);
  print(tinhTich(10));
  print(tinhTich(10, 20));
  print(tinhTich(10, 20, 30));
  print(tinhTich(10, 20, 30, 40));

  var ham = (var a, var b) {
    return a + b;
  };

  var ham2 = (var a, var b) => a + b;

  print(ham(1, 2));
  print(ham2(1, 2));
}

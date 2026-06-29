/*
Dart là một ngôn ngữ lập trình hướng đối tượng, nơi mọi thứ đều là đối tượng và
các đối tượng này được tạo ra từ các lớp (class).

Mỗi đối tượng trong Dart có thể có các thuộc tính (biến) và phương thức (hàm).
Thuộc tính lưu trữ dữ liệu và phương thức thực hiện các hành động.

Sử dụng dấu chấm (.) để tham chiếu đến một thuộc tính hoặc phương thức:

*/

import 'dart:math';

class Point {
  double x, y;
  Point(this.x, this.y); //constructor tự động hiểu : this.x = x, this.y = y
  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Point2 {
  double? x; // Thuoc tinh instance x, ban dau mac dinh la null
  double z = 0; // Thuoc tinh instance z, ban dau co gia tri la 0
}

double X_ = 10;

class Point3 {
  double? x = X_; //Có thể truy cập khai báo không phụ thuộc this.

  // double? y = this.x; => Error
  double? y;
  late double? z = this.x; //lazy initialization

  Point3(this.x, this.y, this.z);
}

/*
Phương thức khởi tạo
Ta có thể tạo đối tượng bằng cách sử dụng phương thức khởi tạo (constructors).
Tên constructor có thể là ClassName hoặc ClassName.identifier. 
*/

//=======
/*
Phương thức getters, setter
Trong Dart, getters và setters là các phương thức đặc biệt cung cấp quyền truy cập
đọc và ghi vào các thuộc tính của một đối tượng. Ta có thể tạo thêm các thuộc tính
bằng cách triển khai getters và setters thông qua các từ khoá get và set.
*/

class Rectangle {
  double left, top, right, bottom;
  late double _z;
  Rectangle(this.left, this.top, this.right, this.bottom);
  double get getZ => _z;
  set setZ(double value) => _z = value;

  @override
  String toString() {
    return left.toString() +
        " " +
        top.toString() +
        " " +
        right.toString() +
        " " +
        bottom.toString();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Rectangle) return false;

    return left == other.left &&
        top == other.top &&
        right == other.right &&
        bottom == other.bottom;
  }
}

// ===================
/*
Thuộc tính và phương thức static
Trong Dart, thuộc tính và phương thức tĩnh (static) được sử dụng để chia sẻ dữ
liệu và chức năng giữa tất cả các đối tượng của một lớp. Điều này có nghĩa là ta không
cần phải tạo ra một đối tượng để truy cập vào các thuộc tính hoặc phương thức này
*/

class MyMath {
  static const double PI = 3.14159;

  static double circleArea(double radius) => PI * radius * radius;
}

void main() {
  //Khởi tạo đối tượng
  var firstPoint = new Point(2, 5);
  var secondPoint = new Point(4, 6);
  var distance = firstPoint.distanceTo(secondPoint);
  print(distance.toStringAsFixed(2));

  // var p2firstPoint = new Point2();
  // print(p2firstPoint);

  print(MyMath.PI);
  print(MyMath.circleArea(10));

  var firstRectangle = new Rectangle(1, 2, 3, 4);
  print(firstRectangle);
  firstRectangle._z = 10;

  var secondRectangle = new Rectangle(1, 2, 3, 4);
  print(firstRectangle == secondRectangle);
}

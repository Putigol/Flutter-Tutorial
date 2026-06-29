/*
Tham khảo bài này: https://viblo.asia/p/dartflutter-so-sanh-abstract-class-interface-mixin-MG24BrX54z3

Mixin là một lớp có chứa các phương thức và thuộc tính dùng để gộp vào một lớp
khác. Mixin không thể được sử dụng để tạo đối tượng trực tiếp. Để sử dụng mixin, sử
dụng từ khoá with.
*/

mixin M {
  int? a;
  void showSomething() {
    print('showSomething');
  }
}

class B {
  String name = "Class B";
  void displayInfo() {
    print('displayInfo');
  }
}

class C extends B with M {
  @override
  void displayInfo() {
    showSomething();
    a = 10;
  }
}

void main() {
  var c = C();
  c.displayInfo();
}

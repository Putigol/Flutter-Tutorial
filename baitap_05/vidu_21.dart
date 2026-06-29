//Định nghĩa 1 mixin để xử lý validation dữ liệu
mixin ValidationMixin {
  bool isEmailValid(String email) {
    final RegExp emailRegExp = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );
    return emailRegExp.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    //Kiểm tra mật khẩu có ít nhất 8 ký tự, chứa chữ hoa, chữ thường và số
    final RegExp passwordRegExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
    );
    return passwordRegExp.hasMatch(password);
  }

  bool isPhoneNumberValid(String phoneNumber) {
    final RegExp phoneRegExp = RegExp(r'^\+?0[0-9]{10,12}$');
    return phoneRegExp.hasMatch(phoneNumber);
  }
}

//Định nghĩa mixin để xử lý lưu trữ
mixin StorageMixin {
  Future<void> saveData(String key, dynamic value) async {
    print('Lưu dữ liệu $key: $value');
    //Trong trường hợp thực tế sẽ sử dụng SharedPreferences hoặc Hive
  }

  Future<dynamic> getData(String key) async {
    print('Lấy dữ liệu $key');
    //Trong trường hợp thực tế sẽ sử dụng SharedPreferences hoặc Hive
    return null;
  }

  Future<void> removeData(String key) async {
    print('Xoa dữ liệu $key');
    //Trong trường hợp thực tế sẽ sử dụng SharedPreferences hoặc Hive
  }
}

//Lớp cơ sở cho các màn hình đăng nhập/đăng ký
class AuthScreen {
  void showLoading() {
    print('Hiển thị loading...');
  }

  void hideLoading() {
    print('Ẩn loading...');
  }

  void navigationToHome() {
    print('Di chuyển đến trang chủ...');
  }
}

//Lớp màn hình đăng nhập kế thừa AuthScreen và sử dụng cả mixin
class LoginScreen extends AuthScreen with ValidationMixin, StorageMixin {
  String email = '';
  String password = '';

  void login() {
    if (!isEmailValid(email)) {
      print('Email không hợp lệ');
      return;
    }

    if (!isPasswordValid(password)) {
      print('Mật khẩu không hợp lệ');
      return;
    }

    // if (!isPhoneNumberValid(password)) {
    //   print('Sđt không hợp lệ');
    //   return;
    // }

    showLoading();

    //Giả lập đăng nhập thành công
    print('Đăng nhập thành công với email: $email');

    //Lưu trạng thái đăng nhập
    saveData('user_logged_in', true);
    saveData('user_email', email);

    hideLoading();
    navigationToHome();
  }
}

//Màn hình đăng ký cũng sử dụng các mixin tương tự
class SignUpScreen extends AuthScreen with ValidationMixin, StorageMixin {
  String email = '';
  String password = '';
  String phoneNumber = '';

  void signUp() {
    if (!isEmailValid(email)) {
      print('Email không hợp lệ');
      return;
    }

    if (!isPasswordValid(password)) {
      print('Mật kInstruction hợp lệ');
      return;
    }

    if (!isPhoneNumberValid(phoneNumber)) {
      print('Sđt không hợp lệ');
      return;
    }

    showLoading();

    //Giả lập đăng ký thành cong
    print('Đăng ký thành công với email: $email');

    //Lưu trạng thái đăng ký
    saveData('user_logged_in', true);
    saveData('user_email', email);

    hideLoading();
    navigationToHome();
  }
}

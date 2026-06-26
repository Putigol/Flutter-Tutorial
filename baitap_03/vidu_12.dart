void main() {
  /* ĐỊNH NGHĨA:
    - Map là cấu trúc dữ liệu lưu trữ dạng key - value
    - Mỗi key là duy nhất => set
    - Value có thể trùng lặp => list
    - Key và value có thể là bất kỳ kiểu dữ liệu nào
  */

  //CÁCH KHAI BÁO:

  //Cách 1: Khai báo trực tiếp
  Map<String, dynamic> firstUser = {
    //dynamic: datatype động
    'name': 'Nguyen Van A',
    'age': 20,
    'isStudent': true,
  };
  print(firstUser);

  //Cách 2: Sử dụng var
  var secondUser = <String, dynamic>{
    'name': 'Nguyen Van B',
    'age': 21,
    'isStudent': false,
  };
  print(secondUser);

  //Cách 3: Khởi tạo map rỗng
  Map<String, dynamic> thirdUser = {};
  print(thirdUser);

  //CÁC PHƯƠNG THỨC

  //1. Thêm và cập nhật:
  firstUser['name'] = 'Nguyen Van C'; //Cập nhật value cho key name
  firstUser['address'] = 'Ha Noi'; //Thêm key-value
  firstUser.putIfAbsent(
    'email',
    () => 'L5A8B@example.com',
  ); //Thêm nếu key chưa có value
  firstUser.addAll({
    'gender': 'male',
    'phone': '0123456789',
  }); //Thêm nhiều entry

  print(firstUser);

  //2. Xoá:
  firstUser.remove('age'); //Xoá 1 key
  firstUser.removeWhere((key, value) => key == 'isStudent'); //Xoá có điều kiện
  // firstUser.clear(); //Xoá tất cả
  print(firstUser);

  //3. Truy cập:
  print(firstUser['name']); //Truy cập value theo key
  print(firstUser.length); //Truy cập số phần tử

  //Lấy value an toàn với giá trị mặc định
  String phone = firstUser['phone'] ?? 'không có số điện thoại';
  print(phone);

  //4. Lấy danh sách
  print(firstUser.values); //Truy cập tất cả value
  print(firstUser.keys); //Truy cập tất cả key
  print(firstUser.entries); //Truy cập tất cả entry

  //5. Duyệt map
  //Duyệt theo key-value
  firstUser.forEach((key, value) => print('$key: $value'));

  //Duyệt theo entry
  for (var entry in firstUser.entries) {
    print('${entry.key}: ${entry.value}');
  }

  //7. Biến đổi
  //Map key thành chữ hoa
  var upperMap = firstUser.map(
    (key, value) => MapEntry(key.toUpperCase(), value),
  );
  print(upperMap);

  //Lọc map
  var filteredMap = firstUser.entries
      .where((entry) => entry.value is String)
      .toList();
  print(filteredMap);

  //VÍ DỤ THỰC TẾ:

  //1. Lưu trữ thông tin sản phẩm trong giỏ hàng
  Map<String, int> cart = {'SP01': 1, 'SP02': 2, 'SP03': 3};
  print(cart);

  //. Thêm sản phẩm vào giỏ
  void addToCart(String productId, int quantity) {
    cart.update(productId, (quantity) => quantity + 1, ifAbsent: () => 1);
  }

  addToCart('SP01', 23);

  // Cập nhật số lượng
  void updateQuantity(String productId, int quantity) {
    if (cart.containsKey(productId)) {
      cart[productId] = quantity;
    }
  }

  updateQuantity('SP01', 23);

  //2. Lưu cài đặt ứng dụng
  Map<String, dynamic> settings = {
    'darkMode': true,
    'fontSize': 16,
    'language': 'vi',
    'notifications': true,
  };
  print(settings);

  //Cập nhật cài dặt
  void updateSettings(String key, dynamic value) {
    settings[key] = value;
  }

  updateSettings('fontSize', 18);

  //3. Cache dữ liệu
  Map<String, dynamic> cache = {};

  void cacheData(String key, String data) {
    cache[key] = data;
  }

  cacheData('user', 'Nguyen Van A');

  String getData(String key) {
    return cache[key] ?? 'Không có dữ liệu';
  }

  print(getData('user'));

  //4. Quản lý trạng thái form
  Map<String, String> formErrors = {};

  void setFormError(String field, String error) {
    formErrors[field] = error;
  }

  setFormError('login', 'Sai username/password');

  void clearError(String field) {
    formErrors.remove(field);
  }

  clearError('login');

  bool hasError() {
    return formErrors.isNotEmpty;
  }

  print(hasError());
}

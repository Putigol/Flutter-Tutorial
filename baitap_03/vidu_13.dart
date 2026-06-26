void main() {
  /*ĐỊNH NGHĨA:
    - Runes là tập hợp các điểm mã Unicode của một chuỗi
    - Dùng để xử lý các ký tự Unicode đặc biệt như Emoji, ký tự đặc biệt
    - Mỗi ký tự Unicode được biểu diễn bằng 1 số nguyên
  */

  //Cách khai báo:
  String firstString = "Hello World";
  Runes firstRunes = firstString.runes;
  print(firstRunes);

  Runes heartRunes = Runes('\u2665'); //Trái tim ♥
  print(heartRunes);

  Runes thirdRunes = Runes('\u{1F600}'); //Emoji cười 😀
  print(thirdRunes);

  //CÁC PHƯƠNG THỨC VÀ THUỘC TÍNH:

  //1. Chuyển đổi:
  //Từ Runes sang String
  String heartSymbol = String.fromCharCodes(heartRunes);
  print(heartSymbol);

  //Từ mã Unicode sang String
  String emoji = String.fromCharCode(0x1F600); //😀
  print(emoji);
  String symbol = String.fromCharCode(0x2665); //Trái tim ♥
  print(symbol);

  //2. Xử lý:
  // 2. Xử lý:
  print(firstRunes.length); // Số lượng điểm mã
  print(firstRunes.first); // Điểm mã đầu tiên
  print(firstRunes.last); // Điểm mã cuối cùng

  // Duyệt qua từng điểm mã
  firstRunes = 'Xin chào 😀, tôi rất ♥ bạn!'.runes;
  firstRunes.forEach((int rune) {
    print('Unicode: $rune, Ký tự: ${String.fromCharCode(rune)}');
  });

  // Kiểm tra
  print(firstRunes.isEmpty); // Kiểm tra rỗng
  print(firstRunes.isNotEmpty); // Kiểm tra không rỗng

  // Xử lý emoji trong ứng dụng chat
  // Hiển thị ký tự đặc biệt (copyright, trademark)
  // Tạo các biểu tượng đánh giá (sao, tim)
  // Xử lý văn bản đa ngôn ngữ có ký tự đặc biệt
}

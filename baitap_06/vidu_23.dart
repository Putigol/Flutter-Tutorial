/*
Stream là gì?

Nếu Future giống như đợi một món ăn, thì Stream giống như xem một kênh YouTube:

Bạn đăng ký kênh (lắng nghe stream)
Video mới liên tục được đăng tải (stream phát ra dữ liệu)
Bạn xem từng video khi nó xuất hiện (xử lý dữ liệu từ stream)
Kênh có thể đăng tải nhiều video theo thời gian (stream phát nhiều giá trị)

Stream trong Dart là chuỗi các sự kiện hoặc dữ liệu theo thời gian,
không chỉ một lần như Future.

*/

void StreamDemSo() {
  //Tạo ra stream đếm số (0,5,10,...100), mỗi giây đếm 1 số
  Stream<int> firstStream = Stream.periodic(
    Duration(seconds: 1),
    (x) => x + 1,
  ).take(20);

  //Lắng nghe
  firstStream.listen(
    (x) => print('Nghe được số ${x * 5} - đang chạy trốn'),
    onDone: () => print('Người đi tìm bắt đầu đi tìm'),
    onError: (error) => print('Có vấn đề, ngưng cuộc chơi $error'),
  );
}

void main() {
  StreamDemSo();
}

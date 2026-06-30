import 'dart:async';

//Ví dụ 2: Tạo và điều khiển stream với StreamController
void viduStreamController() {
  //Tạo bộ điều khiển Stream
  StreamController<String> streamController = StreamController<String>();

  //Lắng nghe Stream
  streamController.stream.listen(
    (tinNhan) => print('Tin nhắn mới: $tinNhan'),
    onDone: () => print('Không còn tin nhắn nào nữa!'),
  );

  //Gửi tin nhắn vào stream
  print('Đang gửi tin nhắn đầu tiên...');
  streamController.add('Xin chào !');

  //Gửi thêm tin nhắn sau 2 giây
  Future.delayed(Duration(seconds: 2), () {
    print('Đang gửi tin nhắn thứ hai...');
    streamController.add('Bạn khoẻ không ?');
  });

  //Gửi tin nhắn cuối và đóng stream sau 4 giây
  Future.delayed(Duration(seconds: 4), () {
    print('Đang gửi tin nhắn cuối cùng...');
    streamController.add('Xin chào tạm biệt !');
    streamController.close();
  });
}

void main() {
  viduStreamController();
}

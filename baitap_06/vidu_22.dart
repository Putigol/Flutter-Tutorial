import 'dart:async';
/*
Future là gì?

Hãy tưởng tượng bạn gọi món ăn tại một nhà hàng:
+ Bạn đặt món (gọi một hàm)
+ Nhân viên phục vụ nói "vâng, tôi sẽ mang món ăn đến sau" (nhận về một Future)
+ Bạn có thể làm việc khác trong lúc chờ đợi (tiếp tục chạy code)
Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (sử dụng kết quả)

Future trong Dart cũng hoạt động tương tự.
Đó là một cách để làm việc với các tác vụ
mất thời gian mà không phải chờ đợi (ví dụ: tải dữ liệu từ internet, đọc tệp).

Hiểu rõ về "async/await"
async/await là 2 từ khoá đặc biệt trong Dart giúp làm việc với future dễ hơn.

Từ khoá async:
  - Khi thêm từ khoá async vào 1 hàm, bạn đang nói với Dart: "hàm này chứa code bất đồng bộ"
  - Một hàm được đánh dấu async sẽ luôn luôn trả về 1 future (ngay cả khi bạn không khai báo nó)
*/

Future<String> layTen() async {
  return "Nguyễn Phúc Thịnh";
}

/*
  Từ khoá await
    - await chỉ có thể được sử dụng bên trong 1 hàm async
    - Khi bạn đặt await trước 1 future, Dart sẽ:
      - Tạm dừng thực thi hàm tại dòng đó.
      - Đợi future hoàn thành.
      - Trả về giá trị từ future (ko còn đóng gói trong future nữa)
      - Tiếp tục thực thi những dòng code còn lại.

  await biến đổi Future<T> thành giá trị T, giúp code dễ đọc hơn
 */

//Hàm trả về Future
Future<String> taiDuLieu() {
  return Future.delayed(Duration(seconds: 3), () => "Hoàn tất tải dữ liệu");
}

//Gọi hàm chính 1
void hamChinh2() async {
  print("Bắt đầu tải"); //1
  String ketQua = await taiDuLieu(); //2
  print("Tải dữ liệu hoàn tất: $ketQua");
  print('Tiếp tục công việc khác'); //3
}

void main() {
  hamChinh2();
}

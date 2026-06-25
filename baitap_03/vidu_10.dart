void main() {
  /*ĐỊNH NGHĨA:
      - List là tập hợp các phần tử có thứ tự và có thể trùng lặp
      - Các phần tử được truy cập bằng chỉ số (index) từ 0
      - Kích thước có thể thay đổi được
   */

  //Khai báo đầy đủ datatype
  List<String> firstList = ['Nguyen Van A', 'Nguyen Van B', 'Nguyen Van C'];
  print(firstList);

  //Dùng var
  var secondList = [1, 2, 4];
  print(secondList);

  //List rỗng
  List<String> emptyList = [];
  print(emptyList);

  //Khai báo mảng có 10 phần tử 1
  List<int> thirdList = List.filled(10, 1);
  print(thirdList);

  //CÁC THAO TÁC

  //1. Thêm phần tử:
  firstList.add('Nguyen Van D');
  print(firstList);

  //addAll cho phép thêm nhiều phần tử
  firstList.addAll(['Nguyen Van E', 'Nguyen Van F']);
  print(firstList);

  //Chèn vô 1 vị trí
  firstList.insert(1, 'Nguyen Van G');
  print(firstList);
  firstList.insertAll(4, ['Nguyen Van H', 'Nguyen Van I']);

  //2.Xóa phần tử
  firstList.remove('Nguyen Van H');
  print(firstList);

  //Xóa tại vị trí
  firstList.removeAt(1);
  print(firstList);

  //Xoá phần tử cuối cùng
  firstList.removeLast();
  print(firstList);

  //Xoá theo điều kiện
  firstList.removeWhere((element) => element == 'Nguyen Van E');

  //Xoá toàn bộ
  firstList.clear();
  print(firstList);

  //Truy cập phần tử
  print(firstList[5]);

  //Lấy phần tử đầu tiên và cuối cùng
  print(firstList.first);
  print(firstList.last);

  //Lấy độ dài của list
  print(firstList.length);

  //4.Kiểm tra

  //Kiểm tra có rỗng hay không
  print(emptyList.isEmpty);
  print('thirdList: ${thirdList.isEmpty ? 'rỗng' : 'không rỗng'}');

  //Kiểm tra xem phần tử này có trong list hay không
  print(firstList.contains('Nguyen Van A'));

  //Kiểm tra chỉ số chỉ vị trí của phần tử, lần xuất hiện cuối cùng
  print(firstList.indexOf('Nguyen Van A'));
  print(firstList.lastIndexOf('Nguyen Van A'));

  //5. Sắp xếp
  var fourthList = [2, 1, 4, 7, 2, 9];
  print(fourthList);
  fourthList.sort(); //Tăng dần
  print(fourthList);

  int n =
      fourthList.length; //Giảm dần : fourthList.reversed or reversed.toList()
  for (int i = 0; i < n; i++) {
    int temp = fourthList[i];
    fourthList[i] = fourthList[n - 1];
    fourthList[n - 1] = temp;
    n--;
  }

  print(fourthList);

  //6. Cắt và nối
  var subList = fourthList.sublist(1, 4); //Cắt (x,y) từ x đến y-1
  print(subList);

  var str_joined = fourthList.join(', '); //Nối
  print(str_joined);

  //8. Duyệt các phần tử
  fourthList.forEach((element) => print(element));
}

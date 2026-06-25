void main() {
  /*
  ĐỊNH NGHĨA:
    - Set là tập hợp các phần tử không trùng lặp
    - Không có thứ tự xác định
    - Mỗi phần tử chỉ xuất hiện 1 lần
   */

  //Cách khai báo:
  Set<String> firstSet = {
    'Nguyen Van A',
    'Nguyen Van B',
    'Nguyen Van C',
  }; //Trực tiếp
  print(firstSet);

  var secondSet = <int>{1, 2, 3, 4, 5}; //Sử dụng var
  print(secondSet);

  Set<String> thirdSet = {}; //Set rỗng
  print(thirdSet);

  var fourthSet = Set<int>.from([
    1,
    3,
    5,
    3,
    7,
  ]); //Chuyển từ List (loại bỏ phần tử trùng)
  print(fourthSet);

  //CÁC PHƯƠNG THỨC
  //Thêm phần tử
  firstSet.add('Nguyen Van D');
  print(firstSet);

  //Thêm nhiều phần tử
  firstSet.addAll(['Nguyen Van E', 'Nguyen Van F', 'Nguyen Van G']);
  print(firstSet);

  //Xoa phần tử
  firstSet.remove('Nguyen Van A');
  print(firstSet);

  //Xoá nhiều phần tử
  firstSet.removeAll(['Nguyen Van B', 'Nguyen Van C']);
  print(firstSet);

  //Xoá tất cả
  firstSet.clear();
  print(firstSet);

  //3. Truy cập và kiểm tra

  print(firstSet.length); //Số lượng phần tử
  print(thirdSet.isEmpty); //Kiem tra rỗng
  print(firstSet.contains('Nguyen Van D')); //Kiểm tra tồn tại

  //4. Các phép toán tập hợp
  var fifthSet = {1, 2, 3};
  var sixthSet = {3, 4, 5};

  //Phép hợp
  var unionSet = fifthSet.union(sixthSet);
  print(unionSet);

  //Phép giao
  var intersectionSet = fifthSet.intersection(sixthSet);
  print(intersectionSet);

  //Phép hiệu
  var differenceSet = fifthSet.difference(sixthSet);
  print(differenceSet);

  //5. Biến đổi
  var firstList = firstSet.toList(); //Chuyển sang List
  print(firstList);

  var newSet = Set.from(secondSet); //Chuyển sang Set
  print(newSet);

  //Lọc và ánh xạ
  var seventhSet = <String>{'A', 'B', 'C', 'D', 'E'};
  var filteredSet = seventhSet.where(
    (element) => element.startsWith('A'),
  ); //Lọc
  print(filteredSet);

  var mappedSet = seventhSet.map((element) => element.toUpperCase()); //Ánh xạ
  print(mappedSet);

  //VÍ DỤ THỰC TẾ;
  //Quản lý danh sách bạn bè
  Set<String> friends = {'Nguyen Van A', 'Nguyen Van B', 'Nguyen Van C'};
  print(friends);

  //Thêm bạn
  friends.add('Nguyen Van D');
  print(friends);
  friends.add('Nguyen Van A'); //Không thêm được vì đã tồn tại

  //Kiểm tra bạn bè
  bool isFriend = friends.contains('Nguyen Van A');
  print(isFriend);

  //Đề xuất bạn bè
  Set<String> suggestionSet = {'Nguyen Van E', 'Nguyen Van F', 'Nguyen Van G'};
  var newFriends = suggestionSet.difference(friends); //Chỉ lấy
  print(newFriends);
}

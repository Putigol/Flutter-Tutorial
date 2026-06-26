/*
Typedefs trong Dart là một cách ngắn gọn để tạo các alias (bí danh) cho các loại
dữ liệu. Điều này giúp mã nguồn trở nên rõ ràng và dễ đọc hơn, đặc biệt khi làm việc
với các loại dữ liệu phức tạp.
*/
typedef IntList = List<int>;
typedef MapList<X> = Map<X, List<X>>;
void main() {
  IntList firstList = [1, 2, 3, 4, 5];
  print(firstList);

  MapList<String> secondMap = {
    'A': ['A1', 'A2'],
    'B': ['B1', 'B2'],
  };
  print(secondMap);
}

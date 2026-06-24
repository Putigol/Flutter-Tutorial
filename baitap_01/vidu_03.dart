void main() {
  int diemToan = 7;
  int diemVan = 8;
  int diemTong = 0;
  diemTong = diemToan + diemVan;
  //Tính ĐTB
  double diemTrungBinh = diemTong / 2;
  //Gán điểm đạt/không đạt
  String? ketQua;
  ketQua ??= "Chưa xét";
  if (diemTrungBinh >= 5) {
    ketQua = "Đạt";
  }
  print('Điểm trung bình: $diemTrungBinh');
  print('Kết quả: $ketQua');
}

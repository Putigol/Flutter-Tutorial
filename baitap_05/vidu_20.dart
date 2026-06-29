class Product {
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal() {
    print('Ten san pham: ${name}');
    print('Tong tien: ${price * quantity}');
  }
}

class Tablet extends Product {
  double width = 0;
  double height = 0;
  Tablet(this.width, this.height, double price, int quantity, String name)
    : super(price, quantity, name);

  @override
  void showTotal() {
    super.showTotal();
  }
}

void main() {
  Product firstProduct = new Product(60, 5, 'Laptop');
  firstProduct.showTotal();
  print("\n");
  Tablet firstTablet = new Tablet(10, 5, 60, 5, 'Tablet');
  firstTablet.showTotal();
}

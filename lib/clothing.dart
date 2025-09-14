import 'product.dart';

// Derived class: Clothing
// Adds unique property size and method tryOn()

class Clothing extends Product {
  final String size;

  Clothing({
    required String name,
    required double price,
    required int stock,
    required this.size,
  }) : super(name: name, price: price, stock: stock);

  // Unique method
  void tryOn() {
    print('Try on -> $name, Size $size');
  }

  // Override sellItem to add a size note
  @override
  bool sellItem(int quantity) {
    print('Clothing override -> Checking size $size');
    return super.sellItem(quantity);
  }

  String clothingInfo() =>
      'Clothing "$name" | Size: $size | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock';
}

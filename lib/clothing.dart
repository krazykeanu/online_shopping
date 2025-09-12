// lib/clothing.dart
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
    print('Trying on $name, size $size...');
  }

  // Override sellItem to add a size note
  @override
  bool sellItem(int quantity) {
    print('Checking stock for clothing item (size $size)...');
    return super.sellItem(quantity);
  }

  String clothingInfo() => 'Clothing: $name | Size: $size | Price: ₱${price.toStringAsFixed(2)}';
}
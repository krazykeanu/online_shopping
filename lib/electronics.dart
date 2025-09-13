// lib/electronics.dart
import '../online_shopping/lib/product.dart';

// Derived class: Electronics
// Adds unique property warrantyYears and method testDevice()

class Electronics extends Product {
  final int warrantyYears;

  Electronics({
    required String name,
    required double price,
    required int stock,
    required this.warrantyYears,
  }) : super(name: name, price: price, stock: stock);

  // Unique method
  void testDevice() {
    print('Testing the $name... All systems go!');
  }

  // Override info
  @override
  String info() =>
      'Electronics: $name | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock | Warranty: $warrantyYears year(s)';
}
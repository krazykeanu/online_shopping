// lib/product.dart
// Base class: Product
// Demonstrates encapsulation with private fields, getter/setter, and safe methods.

class Product {
  final String name;

  // Private fields — encapsulated (can't be accessed from other files)
  double _price;
  int _stock;

  // Constructor
  Product({
    required this.name,
    required double price,
    required int stock,
  })  : _price = price,
        _stock = stock;

  // Getter for price
  double get price => _price;

  // Getter + Setter for stock (with validation)
  int get stock => _stock;
  set stock(int value) {
    if (value < 0) {
      throw ArgumentError('Stock cannot be negative.');
    }
    _stock = value;
  }

  // Method 1: Add stock
  void addStock(int amount) {
    if (amount <= 0) {
      print('Add stock failed: amount must be positive.');
      return;
    }
    _stock += amount;
    print('Added $amount stock. New stock: $_stock');
  }

  // Method 2: Sell item
  bool sellItem(int quantity) {
    if (quantity <= 0) {
      print('Sale failed: quantity must be positive.');
      return false;
    }
    if (quantity > _stock) {
      print('Sale failed: not enough stock.');
      return false;
    }
    _stock -= quantity;
    print('Sold $quantity item(s). Remaining stock: $_stock');
    return true;
  }

  // Info method
  String info() => 'Product: $name | Price: ₱${_price.toStringAsFixed(2)} | Stock: $_stock';
}

// lib/product.dart
// Base class: Product
// Demonstrates encapsulation with private fields, getters/setters, and safe methods.

class Product {
  final int id; // unique identifier for each product
  String _name;
  double _price;
  int _stock;

  // Constructor
  Product({
    required this.id,
    required String name,
    required double price,
    required int stock,
  }) : _name = name,
       _price = price,
       _stock = stock {
    if (price < 0) throw ArgumentError('Price cannot be negative.');
    if (stock < 0) throw ArgumentError('Stock cannot be negative.');
  }

  // Getters
  String get name => _name;
  double get price => _price;
  int get stock => _stock;

  // Setters with validation
  set name(String value) {
    if (value.trim().isEmpty) throw ArgumentError('Name cannot be empty.');
    _name = value;
  }

  set price(double value) {
    if (value < 0) throw ArgumentError('Price cannot be negative.');
    _price = value;
  }

  set stock(int value) {
    if (value < 0) throw ArgumentError('Stock cannot be negative.');
    _stock = value;
  }

  // Method 1: Add stock
  void addStock(int amount) {
    if (amount <= 0) {
      print('❌ Add stock failed: amount must be positive.');
      return;
    }
    _stock += amount;
    print('✅ Added $amount stock. New stock: $_stock');
  }

  // Method 2: Sell item
  bool sellItem(int quantity) {
    if (quantity <= 0) {
      print('❌ Sale failed: quantity must be positive.');
      return false;
    }
    if (quantity > _stock) {
      print('❌ Sale failed: not enough stock.');
      return false;
    }
    _stock -= quantity;
    print('✅ Sold $quantity item(s). Remaining stock: $_stock');
    return true;
  }

  // Info method
  String info() =>
      '🛒 Product #$id: $_name | Price: ₱${_price.toStringAsFixed(2)} | Stock: $_stock';
}

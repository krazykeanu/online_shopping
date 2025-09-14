import 'account.dart';

// Derived class: Electronics
class Electronics extends Account {
  final int warrantyYears;

  Electronics({
    required String name,
    required double price,
    required int stock,
    required this.warrantyYears,
  }) : super(name: name, price: price, stock: stock);

  void testDevice() {
    print('Test device -> $name: All systems functional');
  }

  @override
  String info() =>
      'Electronics "$name" | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock | Warranty: $warrantyYears year(s)';
}

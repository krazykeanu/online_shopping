import 'account.dart';

// Derived class: Clothing
class Clothing extends Account {
  final String size;

  Clothing({
    required String name,
    required double price,
    required int stock,
    required this.size,
  }) : super(name: name, price: price, stock: stock);

  void tryOn() {
    print('Try on -> $name, Size $size');
  }

  @override
  bool sellItem(int quantity) {
    print('Clothing override -> Checking size $size');
    return super.sellItem(quantity);
  }

  String clothingInfo() =>
      'Clothing "$name" | Size: $size | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock';
}

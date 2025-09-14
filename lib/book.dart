import 'product.dart';

// Derived class: Book
// Adds unique property author and method readSample()

class Book extends Product {
  final String author;

  Book({
    required String name,
    required double price,
    required int stock,
    required this.author,
  }) : super(name: name, price: price, stock: stock);

  // Unique method
  void readSample() {
    print('Read sample -> "$name" by $author (First 10 pages)');
  }

  // Unique info method
  String bookInfo() => 'Book "$name" by $author | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock';
}

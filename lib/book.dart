import 'account.dart';

// Derived class: Book
class Book extends Account {
  final String author;

  Book({
    required String name,
    required double price,
    required int stock,
    required this.author,
  }) : super(name: name, price: price, stock: stock);

  void readSample() {
    print('Read sample -> "$name" by $author (First 10 pages)');
  }

  String bookInfo() =>
      'Book "$name" by $author | Price: ₱${price.toStringAsFixed(2)} | Stock: $stock';
}

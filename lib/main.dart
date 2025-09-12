// lib/main.dart
import 'product.dart';
import 'book.dart';
import 'clothing.dart';
import 'electronics.dart';

void main() {
  print('--- Demo: Base Product ---');
  var baseProduct = Product(name: 'Generic Item', price: 20.0, stock: 10);
  print(baseProduct.info());

  baseProduct.addStock(5);
  baseProduct.sellItem(3);
  baseProduct.sellItem(50);
  print('Stock getter: ${baseProduct.stock}');

  print('\n--- Change stock via setter (valid) ---');
  try {
    baseProduct.stock = 15;
    print('New stock: ${baseProduct.stock}');
  } catch (e) {
    print('Setter error: $e');
  }

  print('\n--- Attempt invalid stock (should throw) ---');
  try {
    baseProduct.stock = -5;
  } catch (e) {
    print('Caught error when setting stock: $e');
  }

  print('\n--- Demo: Book (derived) ---');
  var book = Book(
    name: 'Dart Programming',
    price: 30.0,
    stock: 5,
    author: 'John Doe',
  );
  print(book.bookInfo());
  book.readSample();
  book.sellItem(2);
  book.sellItem(10);

  print('\n--- Demo: Clothing (derived) ---');
  var shirt = Clothing(name: 'T-Shirt', price: 15.0, stock: 20, size: 'M');
  print(shirt.clothingInfo());
  shirt.tryOn();
  shirt.sellItem(3);

  print('\n--- Demo: Electronics (derived) ---');
  var phone = Electronics(
    name: 'Smartphone',
    price: 500.0,
    stock: 3,
    warrantyYears: 2,
  );
  print(phone.info());
  phone.testDevice();
  phone.sellItem(1);
  phone.sellItem(5);

  print('\n--- Final Summary ---');
  print('Base Product Stock: ${baseProduct.stock}');
  print('Book Stock: ${book.stock}');
  print('Clothing Stock: ${shirt.stock}');
  print('Electronics Stock: ${phone.stock}');
}

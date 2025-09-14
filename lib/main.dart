import 'product.dart';
import 'book.dart';
import 'clothing.dart';
import 'electronics.dart';

void main() {
  print('Online Products');

  print('\nBook:');
  var book = Book(
    name: 'Dart Programming',
    price: 30.0,
    stock: 5,
    author: 'Christian',
  );
  print(book.bookInfo());
  book.readSample();
  book.sellItem(2);

  print('\nClothing:');
  var shirt = Clothing(
    name: 'T-Shirt',
    price: 150.0,
    stock: 20,
    size: 'M',
  );
  print(shirt.clothingInfo());
  shirt.tryOn();
  shirt.sellItem(3);

  print('\nElectronics:');
  var phone = Electronics(
    name: 'Iphone 15 Pro Max',
    price: 50000.0,
    stock: 3,
    warrantyYears: 2,
  );
  print(phone.info());
  phone.testDevice();
  phone.sellItem(1);

  print('\nFinal Summary');
  print('Book Stock: ${book.stock}');
  print('Clothing Stock: ${shirt.stock}');
  print('Electronics Stock: ${phone.stock}');
}

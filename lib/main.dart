import 'account.dart';
import 'book.dart';
import 'clothing.dart';
import 'electronics.dart';

void main() {
  print('--- Online Shopping System ---');

  // Create accounts (customers)
  var alice = Account(owner: 'Alice', startingBalance: 1000.0);
  var bob = Account(owner: 'Bob', startingBalance: 300.0);

  print(alice.info());
  print(bob.info());

  // Create products
  var book = Book(
    name: 'Dart Programming',
    price: 300.0,
    stock: 5,
    author: 'Christian',
  );
  var shirt = Clothing(name: 'T-Shirt', price: 150.0, stock: 20, size: 'M');
  var phone = Electronics(
    name: 'Iphone 15 Pro Max',
    price: 50000.0,
    stock: 3,
    warrantyYears: 2,
  );

  // Alice buys a book
  print('\nTransaction 1: Alice buys a book');
  if (book.sellItem(1)) {
    alice.purchase(book.name, book.price);
    book.readSample();
  }

  // Bob tries to buy a phone (insufficient funds)
  print('\nTransaction 2: Bob tries to buy a phone');
  if (phone.sellItem(1)) {
    bob.purchase(phone.name, phone.price);
    phone.testDevice();
  }

  // Bob buys 2 shirts
  print('\nTransaction 3: Bob buys shirts');
  if (shirt.sellItem(2)) {
    bob.purchase(shirt.name, shirt.price * 2);
    shirt.tryOn();
  }

  // Final Summary
  print('\n--- Final Summary ---');
  print(alice.info());
  print(bob.info());
  print(book.bookInfo());
  print(shirt.clothingInfo());
  print(phone.info());
}

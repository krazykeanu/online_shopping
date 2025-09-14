// lib/account.dart

class Account {
  final String? owner; // For customer accounts
  String? _name; // For product objects
  double _price;
  int _stock;
  double _balance;

  Account({
    this.owner, // when acting as customer
    String? name, // when acting as product
    double price = 0.0,
    int stock = 0,
    double startingBalance = 0.0,
  }) : _name = name,
       _price = price,
       _stock = stock,
       _balance = startingBalance {
    if (_price < 0) throw ArgumentError('Price cannot be negative.');
    if (_stock < 0) throw ArgumentError('Stock cannot be negative.');
    if (_balance < 0)
      throw ArgumentError('Starting balance cannot be negative.');
  }

  // Product-like API
  String get name => _name ?? 'Unknown';
  double get price => _price;

  int get stock => _stock;
  set stock(int value) {
    if (value < 0) throw ArgumentError('Stock cannot be negative.');
    _stock = value;
  }

  void addStock(int amount) {
    if (amount <= 0) {
      print('Add stock $amount -> Failed');
      return;
    }
    _stock += amount;
    print('Added $amount stock. New stock: $_stock');
  }

  bool sellItem(int quantity) {
    if (quantity <= 0) {
      print('Sell $quantity -> Failed: invalid qty');
      return false;
    }
    if (quantity > _stock) {
      print('Sell $quantity -> Failed: not enough stock (Available: $_stock)');
      return false;
    }
    _stock -= quantity;
    print('Sell $quantity -> Success, Remaining stock: $_stock');
    return true;
  }

  String productInfo() =>
      'Product: $name | Price: ₱${_price.toStringAsFixed(2)} | Stock: $_stock';

  // Account-like API
  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit failed: amount must be positive.');
      return;
    }
    _balance += amount;
    print(
      'Deposit ₱${amount.toStringAsFixed(2)} -> New balance: ₱${_balance.toStringAsFixed(2)}',
    );
  }

  bool purchase(String productName, double price) {
    if (price > _balance) {
      print('Purchase failed: insufficient funds for ${owner ?? "Unknown"}');
      return false;
    }
    _balance -= price;
    print(
      'Purchase -> ${owner ?? "Unknown"} bought $productName for ₱${price.toStringAsFixed(2)} | Remaining balance: ₱${_balance.toStringAsFixed(2)}',
    );
    return true;
  }

  String info() {
    if (owner != null) {
      return 'Account: $owner | Balance: ₱${_balance.toStringAsFixed(2)}';
    } else {
      return productInfo();
    }
  }
}

// Base class: Account
// Demonstrates encapsulation with private fields, getter/setter, and safe methods.

class Account {
  final String owner;

  // Private fields — encapsulated
  double _balance;

  // Constructor
  Account({
    required this.owner,
    double startingBalance = 0,
  }) : _balance = startingBalance;

  // Getter for balance
  double get balance => _balance;

  // Method: deposit funds
  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit failed: amount must be positive.');
      return;
    }
    _balance += amount;
    print('Deposit ₱${amount.toStringAsFixed(2)} -> New balance: ₱${_balance.toStringAsFixed(2)}');
  }

  // Method: purchase product
  bool purchase(String productName, double price) {
    if (price <= 0) {
      print('Purchase failed: invalid price.');
      return false;
    }
    if (price > _balance) {
      print('Purchase failed: insufficient funds for $owner.');
      return false;
    }
    _balance -= price;
    print('Purchase -> $owner bought $productName for ₱${price.toStringAsFixed(2)} | Remaining balance: ₱${_balance.toStringAsFixed(2)}');
    return true;
  }

  // Info method
  String info() => 'Account: $owner | Balance: ₱${_balance.toStringAsFixed(2)}';
}

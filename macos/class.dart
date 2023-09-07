abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double initialBalance, this.interestRate)
      : super(accountNumber, initialBalance);

  @override
  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds!");
      return;
    }

    balance -= amount;
    balance += (balance * interestRate);

    print("Withdrawn: \$${amount.toStringAsFixed(2)}. Remaining balance (after interest): \$${balance.toStringAsFixed(2)}");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double initialBalance, this.overdraftLimit)
      : super(accountNumber, initialBalance);

  @override
  void withdraw(double amount) {
    if ((balance - amount) < -overdraftLimit) {
      print("Withdrawal exceeds overdraft limit! Insufficient funds!");
      return;
    }

    balance -= amount;
    print("Withdrawn: \$${amount.toStringAsFixed(2)}. Remaining balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  var savings = SavingsAccount(123456, 1000.0, 0.02);
  savings.deposit(500.0);
  savings.withdraw(400.0);

  var current = CurrentAccount(654321, 500.0, 200.0);
  current.deposit(300.0);
  current.withdraw(900.0);
  current.withdraw(150.0);
}
// Abstraction
abstract class Loan {
  // Abstract method to be implemented by subclasses
  double interestRate();

  // Abstract method to be implemented by subclasses
  int tenure();
}

// Inheritance and Polymorphism
class PersonalLoan extends Loan {
  @override
  double interestRate() =>
      10.0; // Overriding with specific interest rate for personal loans

  @override
  int tenure() => 5; // Overriding with specific tenure for personal loans
}

class HomeLoan extends Loan {
  @override
  double interestRate() =>
      6.0; // Overriding with specific interest rate for home loans

  @override
  int tenure() => 20; // Overriding with specific tenure for home loans
}

// Encapsulation
class BankAccount {
  String _accountNumber; // Private variable
  double _balance; // Private variable

  // Constructor
  BankAccount(this._accountNumber, this._balance);

  // Getter for balance (controlled access to private variable)
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited \$${amount}. New balance: \$${_balance}");
    } else {
      print("Invalid deposit amount");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew \$${amount}. New balance: \$${_balance}");
    } else {
      print("Invalid or insufficient funds");
    }
  }
}

void main() {
  // Encapsulation example
  var account = BankAccount("123456789", 1000);
  account.deposit(26394); // Depositing money
  account.withdraw(3639); // Withdrawing money
  print("Current balance: \$${account.balance}"); // Getting balance

  // Inheritance and Polymorphism example
  Loan personalLoan = PersonalLoan();
  Loan homeLoan = HomeLoan();

  print("Personal Loan Interest Rate: ${personalLoan.interestRate()}%");
  print("Home Loan Interest Rate: ${homeLoan.interestRate()}%");

  print("Personal Loan Tenure: ${personalLoan.tenure()} years");
  print("Home Loan Tenure: ${homeLoan.tenure()} years");
}

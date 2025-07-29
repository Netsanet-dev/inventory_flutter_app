import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class AppException implements Exception {
  final String message;
  final StackTrace? stackTrace;
  final Object? cause;

  AppException(this.message, {this.stackTrace, this.cause});

  @override
  String toString() {
    final buffer = StringBuffer('AppException: $message');
    if (cause != null) buffer.write('\nCaused by: $cause');
    if (stackTrace != null) buffer.write('\nStackTrace: $stackTrace');
    return buffer.toString();
  }
}

class InventoryException extends AppException {
  InventoryException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Inventory Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class StockNotFoundException extends AppException {
  StockNotFoundException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super('Stock not found: $message', stackTrace: stackTrace, cause: cause);
}

class StockException extends AppException {
  StockException(String message, {StackTrace? stackTrace, Object? cause})
    : super('Stock not found: $message', stackTrace: stackTrace, cause: cause);
}

class InvalidAccountTypeException extends AppException {
  InvalidAccountTypeException(
    String message,
    AccountType type, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'InvalidAccountTypeException: $message type: ${type.name}',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class ConfigurationException extends AppException {
  ConfigurationException(String key, {StackTrace? stackTrace, Object? cause})
    : super('Configuration error: $key', stackTrace: stackTrace, cause: cause);
}

class AccountNotFoundException extends AppException {
  AccountNotFoundException(String key, {StackTrace? stackTrace, Object? cause})
    : super('Account not found: $key', stackTrace: stackTrace, cause: cause);
}

class SwapNotFoundException extends AppException {
  SwapNotFoundException(String message, {StackTrace? stackTrace, Object? cause})
    : super('Swap not found: $message', stackTrace: stackTrace, cause: cause);
}

class InsufficientStockException extends AppException {
  InsufficientStockException(
    String message,
    int available,
    int requested, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Insufficient stock $message: available $available, requested $requested',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class AccountingException extends AppException {
  AccountingException(String message, {StackTrace? stackTrace, Object? cause})
    : super('Accounting error: $message', stackTrace: stackTrace, cause: cause);
}

class TransactionHandlerException extends AppException {
  TransactionHandlerException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Transaction Handler Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class TransactionRepoException extends AppException {
  TransactionRepoException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Transaction Repo Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class ValidationException extends AppException {
  ValidationException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Validation Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class InsufficientFundsException extends AppException {
  InsufficientFundsException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Insufficient Funds Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class HiveRepositoryException extends AppException {
  HiveRepositoryException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Hive Repository Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

/// Exception for financial statement errors.
class FinancialStatementException extends AppException {
  FinancialStatementException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Financial Statement Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

// Purchase Exception
class PurchaseException extends AppException {
  PurchaseException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Purchase Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class PurchaseItemRepoException extends AppException {
  PurchaseItemRepoException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Purchase Item Repo Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class PurchaseRepoException extends AppException {
  PurchaseRepoException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Purchase Repo Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

// Sales Exception
class SalesException extends AppException {
  SalesException(String message, {StackTrace? stackTrace, Object? cause})
    : super('Sales Exception: $message', stackTrace: stackTrace, cause: cause);
}

class SalesItemRepoException extends AppException {
  SalesItemRepoException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super('Sales Exception: $message', stackTrace: stackTrace, cause: cause);
}

// Sales Repo
class SalesRepoException extends AppException {
  SalesRepoException(String message, {StackTrace? stackTrace, Object? cause})
    : super('Sales Exception: $message', stackTrace: stackTrace, cause: cause);
}

// Expense Exception
class ExpenseException extends AppException {
  ExpenseException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Expense Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class HiveSetupException extends AppException {
  HiveSetupException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Hive Setup Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class BalanceSnapshotException extends AppException {
  BalanceSnapshotException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Balance Snapshot Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class TransactionBuilderException extends AppException {
  TransactionBuilderException(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Transaction Builder Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class TransactionReversalEception extends AppException {
  TransactionReversalEception(
    String message, {
    StackTrace? stackTrace,
    Object? cause,
  }) : super(
         'Transaction Reversal Exception: $message',
         stackTrace: stackTrace,
         cause: cause,
       );
}

class RentalException extends AppException {
  RentalException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Transaction Reversal Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class DisposalException extends AppException {
  DisposalException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Disposal Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

class CategoryRepoException extends AppException {
  CategoryRepoException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Category Repo Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

// ------------- Expense --------------------------------
class ExpenseRepoException extends AppException {
  ExpenseRepoException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'Expense Repo Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

// ------------ App Configuration-----------------------

class AppConfigException extends AppException {
  AppConfigException(String message, {StackTrace? stackTrace, Object? cause})
    : super(
        'App Config Exception: $message',
        stackTrace: stackTrace,
        cause: cause,
      );
}

// ------------ Swap Exceptions ----------
class SwapRepoException implements Exception {
  final String message;
  SwapRepoException(this.message);
  @override
  String toString() => 'SwapRepoException: $message';
}

// --------------- Rental Exceptions -----------------
class RentalRepoException implements Exception {
  final String message;
  RentalRepoException(this.message);
  @override
  String toString() => 'RentalRepoException: $message';
}

// --------------- Purchase Model Exception ---------
class PurchaseModelException implements Exception {
  final String message;
  PurchaseModelException(this.message);
  @override
  String toString() => 'PurchaseModelException: $message';
}

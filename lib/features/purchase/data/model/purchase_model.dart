import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/expense/data/expense_model.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_item_model.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class PurchaseModel extends HiveObject {
  static const _floatTolerance = 0.01;
  final String id;
  final String? invoiceNumber;
  final DateTime date;
  final String? vendorName;
  final String? vendorContact;
  final List<PurchaseItemModel> items;
  final List<ExpenseModel> expense;
  final double? discount;
  final double? buyTax;
  final double? paidAmount;
  final PaymentMethod paymentMethod;
  final PurchaseStatus? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final TransactionType transactionType;
  final bool isReferencedbySale;
  final bool isReferencedByrental;
  final bool isReferencedBySwap;
  final bool isDisposed;
  final bool isReturned;

  // Computed fields
  double get totalAmount =>
      (items.fold<double>(0, (sum, item) => sum + item.subTotal) +
              expense.fold<double>(0, (sum, e) => sum + e.amount) +
              (buyTax ?? 0) -
              (discount ?? 0))
          .clamp(0, double.infinity);

  double get subTotal => items
      .fold<double>(0, (sum, item) => sum + item.subTotal)
      .clamp(0, double.infinity);

  double get totalAfterDiscount =>
      (subTotal - (discount ?? 0)).clamp(0, double.infinity);

  double get totalWithItemTax =>
      (totalAfterDiscount + (buyTax ?? 0)).clamp(0, double.infinity);

  double get balance =>
      (totalWithItemTax - (paidAmount ?? 0)).clamp(0, double.infinity);

  double get expenseTotal => expense
      .fold<double>(0, (sum, e) => sum + e.amount)
      .clamp(0, double.infinity);

  String get paymentStatus {
    if (paidAmount == null || paidAmount == 0) return 'Unpaid';
    if ((paidAmount! - totalWithItemTax).abs() < _floatTolerance) return 'Paid';
    return 'Partially Paid';
  }

  String get dateFormatted => '${date.day}/${date.month}/${date.year}';
  bool get isRecent => DateTime.now().difference(date).inDays <= 30;
  String get transactionTypeDisplay =>
      transactionType.name.replaceAll('_', ' ').toUpperCase();
  double get averageItemCost {
    int totalPurchasedQuantity = items.fold(0, (sum, item) => sum + item.qty);
    return totalPurchasedQuantity > 0 ? subTotal / totalPurchasedQuantity : 0;
  }

  int get totalItemsPurchased => items.fold(0, (sum, item) => sum + item.qty);
  String get statusDisplay =>
      status?.name.replaceAll('_', ' ').toUpperCase() ?? 'N/A';
  double get discountPercentage => subTotal > 0 && discount != null
      ? (discount! / subTotal * 100).clamp(0, 100)
      : 0;

  PurchaseModel({
    required this.id,
    this.invoiceNumber,
    required this.date,
    this.vendorName,
    this.vendorContact,
    required this.items,
    required this.expense,
    this.discount,
    this.buyTax,
    this.paidAmount,
    required this.paymentMethod,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.transactionType = TransactionType.purchase,
    this.isReferencedbySale = false,
    this.isReferencedByrental = false,
    this.isReferencedBySwap = false,
    this.isDisposed = false,
    this.isReturned = false,
  }) {
    // Basic constructor validation
    if (paymentMethod == PaymentMethod.none) {
      throw ArgumentError('Payment method cannot be none');
    }
    if (date.isBefore(DateTime(2000))) {
      throw ArgumentError('Purchase date must be after the year 2000');
    }
    if (totalAmount.isNaN) {
      throw ArgumentError('Total amount cannot be NaN');
    }
    // Note: totalAmount can be 0 if items, expenses, tax, and discount are all zero.
    // Negative totalAmount is clamped to 0 by the getter, so explicit check here for negative is redundant
    // unless you want to disallow cases where initial inputs would lead to negative *before* clamping.
    // For now, relying on getter's clamp.

    if (paidAmount != null && paidAmount! < 0) {
      throw ArgumentError('Paid amount cannot be negative');
    }
    if (discount != null && discount! < 0) {
      throw ArgumentError('Discount cannot be negative');
    }
    if (buyTax != null && buyTax! < 0) {
      throw ArgumentError('Buy tax cannot be negative');
    }
    if (items.any((item) => item.subTotal < 0)) {
      throw ArgumentError('Item subtotal cannot be negative');
    }
    if (expense.any((e) => e.amount < 0)) {
      throw ArgumentError('Expense amount cannot be negative');
    }
    if (items.any((item) => item.qty <= 0)) {
      // Changed to <= 0 to prevent zero quantity items
      throw ArgumentError('Item quantity must be greater than zero');
    }
  }
  PurchaseModel copyWith({
    String? id,
    String? invoiceNumber,
    DateTime? date,
    String? vendorName,
    String? vendorContact,
    List<PurchaseItemModel>? items,
    List<ExpenseModel>? expense,
    double? discount,
    double? buyTax,
    double? paidAmount,
    PaymentMethod? paymentMethod,
    bool? isDeleted, // This field doesn't exist in the model. Removed.
    DateTime? createdAt,
    DateTime? updatedAt,
    PurchaseStatus? status,
    TransactionType? transactionType,
    bool? isReferencedbySale,
    bool? isReferencedByrental,
    bool? isReferencedBySwap,
    bool? isDisposed,
    bool? isReturned,
  }) {
    return PurchaseModel(
      id: id ?? this.id,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      date: date ?? this.date,
      vendorName: vendorName ?? this.vendorName,
      vendorContact: vendorContact ?? this.vendorContact,
      items: items ?? this.items,
      expense: expense ?? this.expense,
      discount: discount ?? this.discount,
      buyTax: buyTax ?? this.buyTax,
      paidAmount: paidAmount ?? this.paidAmount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
      transactionType: transactionType ?? this.transactionType,
      isReferencedbySale: isReferencedbySale ?? this.isReferencedbySale,
      isReferencedByrental: isReferencedByrental ?? this.isReferencedByrental,
      isReferencedBySwap: isReferencedBySwap ?? this.isReferencedBySwap,
      isDisposed: isDisposed ?? this.isDisposed,
      isReturned: isReturned ?? this.isReturned,
    );
  }

  factory PurchaseModel.fromJson(Map<String, dynamic> json) {
    final items =
        (json['items'] as List?)
            ?.map(
              (item) =>
                  PurchaseItemModel.fromJson(item as Map<String, dynamic>),
            )
            .toList() ??
        [];
    final expense =
        (json['expense'] as List?)
            ?.map((item) => ExpenseModel.fromJson(item as Map<String, dynamic>))
            .toList() ??
        [];

    return PurchaseModel(
      id: json['id'] as String? ?? '',
      invoiceNumber: json['invoiceNumber'] as String? ?? '',
      date: DateTime.tryParse(json['date'] as String? ?? '') ?? DateTime.now(),
      vendorName: json['vendorName'] as String? ?? '',
      vendorContact: json['vendorContact'] as String?,
      items: items,
      expense: expense,
      discount: (json['discount'] as num?)?.toDouble(),
      buyTax: (json['buyTax'] as num?)?.toDouble(),
      paidAmount: (json['paidAmount'] as num?)?.toDouble(),
      paymentMethod: json['paymentMethod'] != null
          ? PaymentMethod.values.byName(json['paymentMethod'] as String)
          : PaymentMethod.cash,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
      status: json['PurchaseStatus'] != null
          ? PurchaseStatus.values.byName(json['PurchaseStatus'] as String)
          : PurchaseStatus.completed,
      transactionType: TransactionType.values.byName(
        (json['transactionType'] as String?)?.toLowerCase() ??
            'purchase', // Corrected key to 'transactionType' and added default
      ),
      isReferencedbySale: json['isReferencedbySale'] as bool? ?? false,
      isReferencedByrental: json['isReferencedByrental'] as bool? ?? false,
      isReferencedBySwap: json['isReferencedBySwap'] as bool? ?? false,
      isDisposed: json['isDisposed'] as bool? ?? false,
      isReturned: json['isReturned'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'invoiceNumber': invoiceNumber,
    'date': date.toIso8601String(),
    'vendorName': vendorName,
    'vendorContact': vendorContact,
    'items': items.map((item) => item.toJson()).toList(),
    'expense': expense.map((e) => e.toJson()).toList(),
    'discount': discount,
    'buyTax': buyTax,
    'paidAmount': paidAmount,
    'paymentMethod': paymentMethod.name,
    // 'paymentStatus': paymentStatus, // This is a computed getter, not a stored field
    'status': status?.name ?? '',
    'createdAt': createdAt
        ?.toIso8601String(), // Ensure proper ISO 8601 string for DateTime
    'updatedAt': updatedAt
        ?.toIso8601String(), // Ensure proper ISO 8601 string for DateTime
    'transactionType': transactionType.name,
    'isReferencedbySale': isReferencedbySale,
    'isReferencedByrental': isReferencedByrental,
    'isReferencedBySwap': isReferencedBySwap,
    'isDisposed': isDisposed,
    'isReturned': isReturned,
  };

  // --- Additional Computed Methods ---

  /// Returns true if the purchase has any items.
  bool get hasItems => items.isNotEmpty;

  /// Returns true if the purchase has any associated expenses.
  bool get hasExpenses => expense.isNotEmpty;

  /// Returns the total quantity of all items, including referenced and unreferenced.
  int get totalGrossQuantityOfItems =>
      items.fold(0, (sum, item) => sum + item.qty);

  /// Returns the total quantity of unreferenced (available) items across all purchase items.
  int get totalUnreferencedQuantity =>
      items.fold(0, (sum, item) => sum + item.unreferencedQuantity);

  /// Returns true if all items in the purchase have been fully referenced
  /// (sold, rented, swapped, or disposed).
  bool get areAllItemsReferenced => totalUnreferencedQuantity == 0;

  /// Returns true if the purchase is fully paid.
  bool get isFullyPaid => paymentStatus == 'Paid';

  /// Returns true if the purchase is overdue for payment.
  /// This requires a `dueDate` field in your `PurchaseModel` for accurate calculation.
  /// As it's not present, this is a hypothetical method.
  /// You might add `final DateTime? dueDate;` to `PurchaseModel`.
  bool isPaymentOverdue(DateTime? dueDate) {
    if (dueDate == null || isFullyPaid) {
      return false;
    }
    return DateTime.now().isAfter(dueDate);
  }

  /// Returns the total value of the unreferenced stock from this purchase.
  double get totalUnreferencedStockValue =>
      items.fold(0.0, (sum, item) => sum + item.unreferencedStockValue);

  /// Returns a list of purchase items that are currently in low stock based on their `minStock` alert.
  List<PurchaseItemModel> get lowStockItems {
    return items.where((item) => item.isLowStock).toList();
  }

  /// Returns true if there are any low stock items in this purchase.
  bool get hasLowStockItems => lowStockItems.isNotEmpty;

  // /// Returns true if the purchase status is "Pending".
  // bool get isPending => status == PurchaseStatus.pending;

  /// Returns true if the purchase status is "Completed".
  bool get isCompleted => status == PurchaseStatus.completed;

  /// Returns true if the purchase status is "Cancelled".
  bool get isCancelled => status == PurchaseStatus.cancelled;

  /// Returns a concise string describing the purchase, useful for display.
  String get purchaseDescription {
    final itemNames = items.map((item) => item.categoryDisplayName).join(', ');
    return '${invoiceNumber ?? 'N/A'} - ${vendorName ?? 'Unknown Vendor'} - $dateFormatted - Total: ${totalAmount.toStringAsFixed(2)} - Items: $itemNames';
  }

  /// Checks if the purchase contains a specific item (by its ID).
  bool containsItem(String itemId) {
    return items.any((item) => item.id == itemId);
  }

  /// Returns the number of distinct categories of items in this purchase.
  int get distinctCategoryCount =>
      items.map((item) => item.category.category).toSet().length;

  /// Calculates the profit margin percentage for the entire purchase,
  /// assuming a hypothetical `totalSellingPrice` for all items.
  /// This would require you to track selling prices on your `PurchaseItemModel`
  /// or pass a total estimated selling price.
  /// For now, it calculates based on unreferenced quantity if you define a selling price.
  ///
  /// This method is a placeholder and would need `sellingPricePerUnit`
  /// to be available for each `PurchaseItemModel` or an aggregated selling price.
  double calculateEstimatedPurchaseProfit(double totalEstimatedSellingPrice) {
    if (totalEstimatedSellingPrice <= totalAmount) {
      return 0.0;
    }
    return ((totalEstimatedSellingPrice - totalAmount) /
            totalEstimatedSellingPrice) *
        100;
  }

  /// Gets the age of the purchase.
  Duration get purchaseAge {
    return DateTime.now().difference(date);
  }

  /// Returns a formatted string representing the age of the purchase (e.g., "30 days ago", "2 months ago").
  String get formattedPurchaseAge {
    final age = purchaseAge;
    if (age.inDays < 1) {
      return 'Today';
    } else if (age.inDays < 30) {
      return '${age.inDays} days ago';
    } else if (age.inDays < 365) {
      final months = (age.inDays / 30).floor();
      return '$months month${months == 1 ? '' : 's'} ago';
    } else {
      final years = (age.inDays / 365).floor();
      return '$years year${years == 1 ? '' : 's'} ago';
    }
  }

  /// Returns true if the purchase has any balance remaining (is not fully paid).
  bool get hasOutstandingBalance => balance > _floatTolerance;

  /// Returns the remaining balance as a percentage of the total amount.
  double get balancePercentage {
    if (totalAmount <= 0) return 0.0;
    return (balance / totalAmount) * 100;
  }

  /// Updates the paid amount and returns a new `PurchaseModel` instance.
  /// Ensures the paid amount does not exceed the total amount and is not negative.
  PurchaseModel updatePaidAmount(double amountPaid) {
    double newPaidAmount = (paidAmount ?? 0) + amountPaid;
    newPaidAmount = newPaidAmount.clamp(
      0,
      totalAmount,
    ); // Ensure it doesn't exceed total or go below zero

    return copyWith(paidAmount: newPaidAmount, updatedAt: DateTime.now());
  }

  /// Adds a new expense to the purchase and returns a new `PurchaseModel` instance.
  PurchaseModel addExpense(ExpenseModel newExpense) {
    final updatedExpenses = List<ExpenseModel>.from(expense)..add(newExpense);
    return copyWith(expense: updatedExpenses, updatedAt: DateTime.now());
  }

  /// Removes an expense from the purchase by its ID and returns a new `PurchaseModel` instance.
  PurchaseModel removeExpense(String expenseId) {
    final updatedExpenses = expense.where((e) => e.id != expenseId).toList();
    return copyWith(expense: updatedExpenses, updatedAt: DateTime.now());
  }

  /// Adds a new purchase item to the purchase and returns a new `PurchaseModel` instance.
  PurchaseModel addPurchaseItem(PurchaseItemModel newItem) {
    final updatedItems = List<PurchaseItemModel>.from(items)..add(newItem);
    return copyWith(items: updatedItems, updatedAt: DateTime.now());
  }

  /// Removes a purchase item from the purchase by its ID and returns a new `PurchaseModel` instance.
  PurchaseModel removePurchaseItem(String itemId) {
    final updatedItems = items.where((item) => item.id != itemId).toList();
    return copyWith(items: updatedItems, updatedAt: DateTime.now());
  }
}

import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';
import 'package:inventory_flutter_app/utils/translation/expense_category_translation.dart';
import 'package:inventory_flutter_app/utils/translation/payment_method_translation.dart';

class ExpenseModel extends HiveObject {
  final String id;
  final String? imageReceipt;
  final String? reciptId;
  final String? vendor;
  final DateTime date;
  final double tax;
  final String? purchaseId;
  final double amount;
  final ExpenseCategory category;
  final PaymentMethod paymentMethod;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool isPrepaid;
  final bool fromInventory;
  final bool isReferencedByPurchae;

  // Computed fields
  double get totalWithTax => (amount + (tax)).clamp(0, double.infinity);
  double get netAmount => amount.clamp(0, double.infinity);
  int get expenseAgeDays => DateTime.now().difference(date).inDays;

  bool get isRecent => expenseAgeDays <= 30;
  String get dateFormatted => '${date.day}/${date.month}/${date.year}';
  double get taxPercentage =>
      amount > 0 ? (tax / amount * 100).clamp(0, 100) : 0;

  ExpenseModel({
    required this.id,
    required this.amount,
    required this.category,
    required this.paymentMethod,
    this.purchaseId,
    this.tax = 0.0,
    this.vendor,
    required this.date,
    this.imageReceipt,
    this.reciptId,
    this.isPrepaid = false,
    this.fromInventory = false,
    this.isReferencedByPurchae = false,
    this.createdAt,
    this.updatedAt,
  }) {
    if (amount <= 0) throw ArgumentError('Amount must be positive');
    if (paymentMethod == PaymentMethod.none) {
      throw ArgumentError('Payment method cannot be none');
    }
    if (date.isAfter(DateTime.now())) {
      throw ArgumentError('Date cannot be in the future');
    }
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date.toIso8601String(),
    'amount': amount,
    'category': category.name,
    'paymentMethod': paymentMethod.name,
    'vendor': vendor,
    'purchaseId': purchaseId,
    'tax': tax,
    'isPrepaid': isPrepaid,
    'fromInventory': fromInventory,
    'imageReceipt': imageReceipt,
    'isReferencedByPurchae': isReferencedByPurchae,
    'reciptId': reciptId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };
  ExpenseModel copyWith({
    String? id,
    double? amount,
    ExpenseCategory? category,
    PaymentMethod? paymentMethod,
    DateTime? date,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? vendor,
    String? purchaseId,
    double? tax,
    bool? isPrepaid,
    bool? fromInventory,
    bool? isReferencedByPurchae,
    String? imageReceipt,
    String? reciptId,
  }) {
    return ExpenseModel(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      purchaseId: purchaseId ?? this.purchaseId,
      vendor: vendor ?? this.vendor,
      tax: tax ?? this.tax,
      date: date ?? this.date,
      isPrepaid: isPrepaid ?? this.isPrepaid,
      fromInventory: fromInventory ?? this.fromInventory,
      isReferencedByPurchae:
          isReferencedByPurchae ?? this.isReferencedByPurchae,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      imageReceipt: imageReceipt ?? this.imageReceipt,
      reciptId: reciptId ?? this.reciptId,
    );
  }

  factory ExpenseModel.fromJson(Map<String, dynamic> json) => ExpenseModel(
    id: json['id'] as String? ?? '',
    date: DateTime.tryParse(json['date'] as String? ?? '') ?? DateTime.now(),
    tax: (json['tax'] as num?)?.toDouble() ?? 0.0,
    vendor: json['vendor'] as String?,
    purchaseId: json['purchaseId'] as String?,
    amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
    category: json['category'] != null
        ? ExpenseCategory.values.byName(json['category'] as String)
        : ExpenseCategory.other,
    paymentMethod: json['paymentMethod'] != null
        ? PaymentMethod.values.byName(json['paymentMethod'] as String)
        : PaymentMethod.cash,
    isPrepaid: json['isPrepaid'] as bool? ?? false,
    fromInventory: json['fromInventory'] as bool? ?? false,
    isReferencedByPurchae: json['isReferencedByPurchae'] as bool? ?? false,
    createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
    updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
    imageReceipt: json['imageReceipt'] as String?,
    reciptId: json['reciptId'] as String?,
  );

  // --- Additional Computed Methods ---

  /// Returns true if the expense has an associated vendor.
  bool get hasVendor => vendor != null && vendor!.isNotEmpty;

  /// Returns true if the expense has an associated receipt image.
  bool get hasImageReceipt => imageReceipt != null && imageReceipt!.isNotEmpty;

  /// Returns true if the expense has a receipt ID.
  bool get hasReceiptId => reciptId != null && reciptId!.isNotEmpty;

  /// Returns true if the expense is directly linked to a purchase.
  bool get isLinkedToPurchase => purchaseId != null && purchaseId!.isNotEmpty;

  String paymentMethodDisplay(AppLocalizations l10n) {
    return PaymentMethodTranslator.translatePaymentMethod(paymentMethod, l10n);
  }

  /// Returns a human-readable string for the expense category.
  String categoryDisplay(AppLocalizations l10n) {
    return ExpenseCategoryTranslation.translateExpenseCategory(category, l10n);
  }

  /// Returns a short summary of the expense.
  String expenseSummary(AppLocalizations l10n) {
    return '${categoryDisplay(l10n)}: ${amount.toStringAsFixed(2)} on $dateFormatted by ${paymentMethodDisplay(l10n)}'
        '${hasVendor ? ' from $vendor' : ''}';
  }

  /// Calculates the amount without tax, useful if `amount` originally included tax.
  /// (Assuming `amount` is the base amount and `tax` is added on top)
  double get amountExcludingTax =>
      amount; // Based on current structure, `amount` is already net.

  /// Returns true if the expense occurred in the current month.
  bool get isInCurrentMonth {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month;
  }

  /// Returns true if the expense occurred in the current year.
  bool get isInCurrentYear {
    return date.year == DateTime.now().year;
  }

  /// Returns true if the expense has a non-zero tax amount.
  bool get hasTaxAmount => tax > 0;

  /// Marks the expense as prepaid.
  /// Returns a new `ExpenseModel` instance with `isPrepaid` set to true and `updatedAt`.
  ExpenseModel markAsPrepaid() {
    return copyWith(isPrepaid: true, updatedAt: DateTime.now());
  }

  /// Marks the expense as paid from inventory.
  /// Returns a new `ExpenseModel` instance with `fromInventory` set to true and `updatedAt`.
  ExpenseModel markAsFromInventory() {
    return copyWith(fromInventory: true, updatedAt: DateTime.now());
  }

  /// Marks the expense as referenced by a purchase.
  /// Returns a new `ExpenseModel` instance with `isReferencedByPurchae` set to true and `updatedAt`.
  ExpenseModel markAsReferencedByPurchase() {
    return copyWith(isReferencedByPurchae: true, updatedAt: DateTime.now());
  }

  /// Calculates the effective cost of the expense per day,
  /// assuming it's a recurring expense over a 30-day period (e.g., monthly).
  /// This is a conceptual method; its usefulness depends on how expenses are managed.
  double get costPerDayIfMonthly {
    return amount / 30; // Assuming 30 days in a month for estimation
  }
}

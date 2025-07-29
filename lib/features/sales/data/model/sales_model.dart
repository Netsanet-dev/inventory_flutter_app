import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/sales/data/model/sales_item_model.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class SaleModel extends HiveObject {
  final String id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? invoiceNumer;
  final String? customerId;
  final String customerName;
  final DateTime date;
  final List<SalesItemModel> saleItems;
  final PaymentMethod paymentMethod;
  final PaymentStatus? status;
  final double? paidAmount;

  // Computed fields
  double get totalAmount => saleItems
      .fold<double>(
        0,
        (sum, item) =>
            sum + item.totalPrice + (item.taxAmount) - (item.discount ?? 0),
      )
      .clamp(0, double.infinity);

  int get totalQuantity =>
      saleItems.fold<int>(0, (sum, item) => sum + item.quantitySold);

  double? get totalDiscount =>
      saleItems.fold<double?>(
            0.0,
            (sum, item) => sum! + (item.discount ?? 0.0),
          )! >
          0.0
      ? saleItems.fold<double>(0, (sum, item) => sum + (item.discount ?? 0.0))
      : null;

  double? get totalTax =>
      saleItems.fold<double?>(0, (sum, item) => sum! + (item.taxAmount))! > 0
      ? saleItems.fold<double>(0, (sum, item) => sum + (item.taxAmount))
      : null;

  double get subtotal =>
      saleItems.fold<double>(0, (sum, item) => sum + item.totalPrice);
  double get totalRevenue => subtotal;
  double get totalCost =>
      saleItems.fold<double>(0, (sum, item) => sum + item.totalCost);
  double get totalProfit =>
      saleItems.fold<double>(0, (sum, item) => sum + item.profitPerItem);
  double get profitMargin => subtotal > 0 ? (totalProfit / subtotal) * 100 : 0;
  double get totalAfterDiscountAndTax =>
      subtotal - (totalDiscount ?? 0) + (totalTax ?? 0);
  bool get isRecent => date.isAfter(DateTime.now().subtract(Duration(days: 7)));
  int get saleAgeDays => DateTime.now().difference(date).inDays;

  // Added: Balance remaining for the sale
  double get balanceDue =>
      (totalAmount - (paidAmount ?? 0.0)).clamp(0, double.infinity);

  // Added: Check if the sale is fully paid
  bool get isPaid =>
      balanceDue < 0.01; // Using a small tolerance for double comparison

  // Added: Check if the sale is partially paid
  bool get isPartiallyPaid => (paidAmount ?? 0.0) > 0.0 && !isPaid;
  // Added: Status display for payment
  String get paymentStatusDisplay {
    if (isPaid) {
      return 'Paid';
    } else if (isPartiallyPaid) {
      return 'Partially Paid';
    } else {
      return 'Unpaid';
    }
  }

  // Added: Check if any item in the sale has been returned
  bool get hasReturnedItems => saleItems.any((item) => item.isReturned);

  SaleModel({
    required this.id,
    this.invoiceNumer,
    this.customerId,
    this.status,
    required this.saleItems,
    required this.date,
    required this.customerName,
    required this.paymentMethod,
    this.paidAmount,
    this.createdAt,
    this.updatedAt,
  });

  SaleModel copyWith({
    String? id,
    String? invoiceNumer,
    String? customerId,
    String? customerName,
    PaymentMethod? paymentMethod,
    PaymentStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? date,
    double? paidAmount,
    List<SalesItemModel>? saleItems,
  }) {
    return SaleModel(
      id: id ?? this.id,
      invoiceNumer: invoiceNumer ?? this.invoiceNumer,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      paidAmount: paidAmount ?? this.paidAmount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      date: date ?? this.date,
      saleItems: saleItems ?? this.saleItems,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'invoiceNumer': invoiceNumer,
    'customerId': customerId,
    'customerName': customerName,
    'date': date.toIso8601String(),
    'saleItems': saleItems.map((item) => item.toJson()).toList(),
    'totalAmount': totalAmount,
    'totalQuantity': totalQuantity,
    'paymentMethod': paymentMethod.name,
    'paidAmount': paidAmount,
    'status': status?.name,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  factory SaleModel.fromJson(Map<String, dynamic> json) {
    // Safely parse DateTime fields
    DateTime? parsedCreatedAt;
    if (json['createdAt'] is String) {
      parsedCreatedAt = DateTime.tryParse(json['createdAt'] as String);
    }

    DateTime? parsedUpdatedAt;
    if (json['updatedAt'] is String) {
      parsedUpdatedAt = DateTime.tryParse(json['updatedAt'] as String);
    }

    return SaleModel(
      id: json['id'] as String,
      invoiceNumer: json['invoiceNumer'] as String?,
      customerId: json['customerId'] as String?,
      customerName: json['customerName'] as String,
      date: DateTime.parse(json['date'] as String),
      saleItems: (json['saleItems'] as List)
          .map((item) => SalesItemModel.fromJson(item))
          .toList(),
      paymentMethod: json['paymentMethod'] != null
          ? PaymentMethod.values.byName(json['paymentMethod'] as String)
          : PaymentMethod.cash,
      status: json['status'] != null
          ? PaymentStatus.values.byName(json['status'] as String)
          : null,
      paidAmount: (json['paidAmount'] as num?)?.toDouble(),
      createdAt: parsedCreatedAt,
      updatedAt: parsedUpdatedAt,
    );
  }

  // --- Additional Computed Methods ---

  /// Returns true if the sale has an invoice number assigned.
  bool get hasInvoiceNumber => invoiceNumer != null && invoiceNumer!.isNotEmpty;

  /// Returns true if the sale has a customer ID assigned.
  bool get hasCustomerId => customerId != null && customerId!.isNotEmpty;

  /// Returns true if this sale is for a specific product (by product name).
  bool containsProduct(String productName) {
    return saleItems.any((item) => item.productName == productName);
  }

  /// Returns the total quantity of a specific product sold in this sale.
  int getQuantityOfProduct(String productName) {
    return saleItems
        .where((item) => item.productName == productName)
        .fold(0, (sum, item) => sum + item.quantitySold);
  }
}

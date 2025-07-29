import 'package:hive_ce/hive.dart';

class SalesItemModel extends HiveObject {
  final String id;
  final String saleId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String purchaseId;
  final String? productName;
  final String? group;
  final int quantitySold;
  final double sellingPricePerUnit;
  final String? unit;
  final double? discount;
  final String? salesPerson;
  final int saleCount;
  final double costPrice;
  final bool isReturned;
  final double? tax;

  SalesItemModel({
    this.group,
    this.productName,
    this.unit,
    this.discount = 0.0,
    this.salesPerson,
    this.isReturned = false,
    this.tax,
    required this.id,
    required this.saleId,
    required this.purchaseId,
    required this.quantitySold,
    required this.sellingPricePerUnit,
    required this.costPrice,
    this.saleCount = 1,
    this.createdAt,
    this.updatedAt,
  });

  static int getSaleCountForProduct(
    List<SalesItemModel> items,
    String productName,
  ) {
    return items.where((item) => item.productName == productName).length;
  }

  double get totalPrice => quantitySold * sellingPricePerUnit;
  double get totalCost => quantitySold * costPrice;
  double get profitPerItem => (sellingPricePerUnit - costPrice) * quantitySold;
  double get taxAmount => tax != null ? totalPrice * tax! : 0.0;
  double get discountedPricePerUnit => sellingPricePerUnit - (discount ?? 0.0);
  bool get isProfitable => sellingPricePerUnit > costPrice;

  SalesItemModel copyWith({
    String? id,
    String? saleId,
    String? group,
    String? productName,
    String? unit,
    double? discount,
    String? salesPerson,
    bool? isReturned,
    double? tax,
    String? purchaseId,
    int? quantitySold,
    double? sellingPricePerUnit,
    double? costPrice,
    int? saleCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SalesItemModel(
      id: id ?? this.id,
      saleId: saleId ?? this.saleId,
      purchaseId: purchaseId ?? this.purchaseId,
      productName: productName ?? this.productName,
      quantitySold: quantitySold ?? this.quantitySold,
      sellingPricePerUnit: sellingPricePerUnit ?? this.sellingPricePerUnit,
      costPrice: costPrice ?? this.costPrice,
      unit: unit ?? this.unit,
      discount: discount ?? this.discount,
      salesPerson: salesPerson ?? this.salesPerson,
      isReturned: isReturned ?? this.isReturned,
      tax: tax ?? this.tax,
      saleCount: saleCount ?? this.saleCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'purchaseId': purchaseId,
    'saleId': saleId,
    'group': group,
    'productName': productName,
    'quantitySold': quantitySold,
    'sellingPricePerUnit': sellingPricePerUnit,
    'unit': unit,
    'discount': discount,
    'salesPerson': salesPerson,
    'saleCount': saleCount,
    'costPrice': costPrice,
    'isReturned': isReturned,
    'tax': tax,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };

  factory SalesItemModel.fromJson(Map<String, dynamic> json) {
    return SalesItemModel(
      id: json['id'],
      saleId: json['saleId'],
      purchaseId: json['purchaseId'],
      group: json['group'],
      productName: json['productName'],
      quantitySold: json['quantitySold'],
      sellingPricePerUnit: (json['sellingPricePerUnit'] as num).toDouble(),
      unit: json['unit'],
      discount: (json['discount'] as num?)?.toDouble(),
      salesPerson: json['salesPerson'],
      saleCount: json['saleCount'] ?? 1,
      costPrice: (json['costPrice'] as num).toDouble(),
      isReturned: json['isReturned'] ?? false,
      tax: (json['tax'] as num?)?.toDouble(),
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : DateTime.now(),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : DateTime.now(),
    );
  }

  // --- Additional Computed Methods ---

  /// Calculates the final price for the item after applying discount and tax.
  double get finalPricePerItem {
    double priceAfterDiscount = sellingPricePerUnit - (discount ?? 0.0);
    return priceAfterDiscount + (priceAfterDiscount * (tax ?? 0.0));
  }

  /// Calculates the total final price for the sold quantity, after discount and tax.
  double get totalFinalPrice => quantitySold * finalPricePerItem;

  /// Calculates the net profit for this sales item after considering tax.
  /// If tax is applied to the selling price, it reduces the profit margin.
  double get netProfit {
    return (totalFinalPrice - totalCost).clamp(
      0,
      double.infinity,
    ); // Ensure profit is non-negative
  }

  /// Returns true if the item was sold recently (e.g., within the last 7 days).
  bool get isRecentSale {
    if (createdAt == null) return false;
    return DateTime.now().difference(createdAt!).inDays <= 7;
  }

  /// Returns true if the profit margin is above a certain threshold (e.g., 10%).
  /// You can adjust the threshold as needed.
  bool isHighlyProfitable([double thresholdPercentage = 0.10]) {
    if (sellingPricePerUnit <= 0) return false; // Avoid division by zero
    return (profitPerItem / totalPrice) > thresholdPercentage;
  }

  /// Returns a display string for the sales item, including product name, quantity, and unit.
  String get itemDisplayString {
    return '${productName ?? 'Unknown Product'} - $quantitySold ${unit ?? 'pcs'}';
  }

  /// Returns true if the item was sold with a discount.
  bool get hasDiscount => (discount ?? 0.0) > 0.0;

  /// Returns true if tax was applied to the item.
  bool get hasTax => (tax ?? 0.0) > 0.0;

  /// Calculates the percentage of discount applied to the item.
  double get discountPercentageApplied {
    if (sellingPricePerUnit <= 0) return 0.0;
    return ((discount ?? 0.0) / sellingPricePerUnit) * 100;
  }

  /// Returns the age of the sale item since its creation date.
  Duration get saleAge {
    if (createdAt == null) return Duration.zero;
    return DateTime.now().difference(createdAt!);
  }

  /// Returns a human-readable string for the sale age.
  String get formattedSaleAge {
    final age = saleAge;
    if (age.inDays < 1) {
      return 'Today';
    } else if (age.inDays < 7) {
      return '${age.inDays} day${age.inDays == 1 ? '' : 's'} ago';
    } else if (age.inDays < 30) {
      final weeks = (age.inDays / 7).floor();
      return '$weeks week${weeks == 1 ? '' : 's'} ago';
    } else if (age.inDays < 365) {
      final months = (age.inDays / 30).floor();
      return '$months month${months == 1 ? '' : 's'} ago';
    } else {
      final years = (age.inDays / 365).floor();
      return '$years year${years == 1 ? '' : 's'} ago';
    }
  }

  /// Updates the quantity sold for this item.
  /// Returns a new `SalesItemModel` with the updated quantity and `updatedAt` timestamp.
  SalesItemModel updateQuantitySold(int newQuantity) {
    if (newQuantity < 0) {
      throw ArgumentError('Quantity sold cannot be negative.');
    }
    return copyWith(quantitySold: newQuantity, updatedAt: DateTime.now());
  }

  /// Updates the selling price per unit for this item.
  /// Returns a new `SalesItemModel` with the updated selling price and `updatedAt` timestamp.
  SalesItemModel updateSellingPrice(double newPrice) {
    if (newPrice < 0) {
      throw ArgumentError('Selling price cannot be negative.');
    }
    return copyWith(sellingPricePerUnit: newPrice, updatedAt: DateTime.now());
  }

  /// Marks the sales item as returned.
  /// Returns a new `SalesItemModel` with `isReturned` set to true and `updatedAt` timestamp.
  SalesItemModel markAsReturned() {
    return copyWith(isReturned: true, updatedAt: DateTime.now());
  }

  /// Returns a unique identifier for the product if you consider `productName` and `group` a unique combination.
  /// This could be useful for aggregating sales data.
  String get productIdentifier => '${group ?? ''}_${productName ?? ''}'.trim();
}

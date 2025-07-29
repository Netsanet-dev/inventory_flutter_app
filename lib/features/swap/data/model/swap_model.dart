import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class SwapModel extends HiveObject {
  final String id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? customerName;
  final DateTime swapDate;
  // In
  final String newId;
  final String newItem; // Name of the new item
  final Sizes newSize;
  final int shoesSize;
  final int newQty;
  final ItemColors newColor;
  // Out
  final String oldPurchaseId;
  final String? stockLocation; // Where the old item is returned to
  final double priceDifference;

  final String customerId;
  final String originalSaleTransactionId;
  final SwapReason swapReason;
  final ItemCondition oldItemCondition; // Condition of the item being returned
  final String? processedByStaffId;
  final String? returnNotes;

  // Computed fields (existing and from previous additions)
  String get swapDirection => priceDifference > 0
      ? 'Customer owes \$${priceDifference.toStringAsFixed(2)}'
      : priceDifference < 0
      ? 'Refund customer \$${(-priceDifference).toStringAsFixed(2)}'
      : 'No payment required';
  int get swapAgeDays => DateTime.now().difference(swapDate).inDays;

  // Additional Computed Methods (from previous response)
  bool get involvesRefund => priceDifference < 0;
  bool get customerOwesPayment => priceDifference > 0;
  String get newItemDisplay =>
      '$newItem (${newQty}x, ${newColor.name}, ${newSize.name}${newSize == Sizes.S ? ' Size $shoesSize' : ''})';
  String get formattedSwapDate =>
      '${swapDate.day}/${swapDate.month}/${swapDate.year}';
  bool get isRecentSwap => swapAgeDays <= 30;
  bool get hasCustomerName => customerName != null && customerName!.isNotEmpty;
  bool get isEvenExchange => priceDifference == 0;
  double get absolutePriceDifference => priceDifference.abs();
  double get totalAmount => newQty * priceDifference.abs();

  /// Returns true if the returned item was in good condition.
  bool get oldItemReturnedInGoodCondition =>
      oldItemCondition == ItemCondition.other;

  /// Returns true if the swap was processed by a specific staff member.
  bool get wasProcessedByStaff =>
      processedByStaffId != null && processedByStaffId!.isNotEmpty;

  /// Provides a more detailed summary of the swap transaction, including new fields.
  String get detailedSwapSummary {
    String summary = 'Swap ID: $id\n';
    summary += 'Date: $formattedSwapDate\n';
    summary += 'Customer ID: $customerId';
    if (hasCustomerName) {
      summary += ' ($customerName)';
    }
    summary += '\nOriginal Sale ID: $originalSaleTransactionId\n';
    summary +=
        'Swap Reason: ${swapReason.name.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), ' ')}\n';
    summary += 'New Item(s): $newItemDisplay\n';
    summary +=
        'Old Item ID: $oldPurchaseId (Condition: ${oldItemCondition.name.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), ' ')})\n';
    if (stockLocation != null && stockLocation!.isNotEmpty) {
      summary += 'Return Location: $stockLocation\n';
    }
    if (returnNotes != null && returnNotes!.isNotEmpty) {
      summary += 'Notes: $returnNotes\n';
    }
    if (wasProcessedByStaff) {
      summary += 'Processed by: $processedByStaffId\n';
    }
    summary += 'Price Difference: $swapDirection';
    return summary;
  }

  SwapModel({
    required this.id,
    this.customerName,
    required this.swapDate,
    required this.newId,
    required this.newItem,
    required this.newColor,
    required this.newQty,
    required this.newSize,
    this.shoesSize = 38,
    required this.oldPurchaseId,
    required this.priceDifference,
    this.stockLocation,
    this.createdAt,
    this.updatedAt,
    required this.customerId,
    required this.originalSaleTransactionId,
    required this.swapReason,
    required this.oldItemCondition,
    this.processedByStaffId,
    this.returnNotes,
  }) {
    if (newId.isEmpty) throw ArgumentError('New item ID cannot be empty');
    if (newItem.isEmpty) throw ArgumentError('New item name cannot be empty');
    if (newQty <= 0) throw ArgumentError('New item quantity must be positive');
    if (oldPurchaseId.isEmpty) {
      throw ArgumentError('Original stock ID cannot be empty');
    }
    if (swapDate.isAfter(DateTime.now())) {
      throw ArgumentError('Swap date cannot be in the future');
    }
    if (shoesSize < 20 || shoesSize > 100) {
      throw ArgumentError('Shoes size must be between 20 and 100');
    }
    // --- NEW FIELD VALIDATIONS ---
    if (customerId.isEmpty) throw ArgumentError('Customer ID cannot be empty');
    if (originalSaleTransactionId.isEmpty) {
      throw ArgumentError('Original sale transaction ID cannot be empty');
    }
  }

  SwapModel copyWith({
    String? id,
    String? customerName,
    DateTime? swapDate,
    String? newId,
    String? newItem,
    Sizes? newSize,
    int? shoesSize,
    int? newQty,
    ItemColors? newColor,
    String? oldPurchaseId,
    String? stockLocation,
    double? priceDifference,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? customerId,
    String? originalSaleTransactionId,
    SwapReason? swapReason,
    ItemCondition? oldItemCondition,
    String? processedByStaffId,
    String? returnNotes,
  }) {
    return SwapModel(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      swapDate: swapDate ?? this.swapDate,
      newId: newId ?? this.newId,
      newItem: newItem ?? this.newItem,
      newSize: newSize ?? this.newSize,
      shoesSize: shoesSize ?? this.shoesSize,
      newQty: newQty ?? this.newQty,
      newColor: newColor ?? this.newColor,
      oldPurchaseId: oldPurchaseId ?? this.oldPurchaseId,
      stockLocation: stockLocation ?? this.stockLocation,
      priceDifference: priceDifference ?? this.priceDifference,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      customerId: customerId ?? this.customerId,
      originalSaleTransactionId:
          originalSaleTransactionId ?? this.originalSaleTransactionId,
      swapReason: swapReason ?? this.swapReason,
      oldItemCondition: oldItemCondition ?? this.oldItemCondition,
      processedByStaffId: processedByStaffId ?? this.processedByStaffId,
      returnNotes: returnNotes ?? this.returnNotes,
    );
  }

  factory SwapModel.fromJson(Map<String, dynamic> json) {
    return SwapModel(
      id: json['id'] as String? ?? '',
      customerName: json['customerName'] as String?,
      swapDate:
          DateTime.tryParse(json['swapDate'] as String? ?? '') ??
          DateTime.now(),
      newId: json['newId'] as String? ?? '',
      newItem: json['newItem'] as String? ?? '',
      newSize: Sizes.values.firstWhere(
        (e) => e.name == (json['newSize'] as String? ?? ''),
        orElse: () => Sizes.S,
      ),
      shoesSize: (json['shoesSize'] as num?)?.toInt() ?? 38,
      newQty: (json['newQty'] as num?)?.toInt() ?? 0,
      newColor: ItemColors.values.firstWhere(
        (e) => e.name == (json['newColor'] as String? ?? ''),
        orElse: () => ItemColors.black,
      ),
      oldPurchaseId: json['oldPurchaseId'] as String? ?? '',
      stockLocation: json['stockLocation'] as String?,
      priceDifference: (json['priceDifference'] as num?)?.toDouble() ?? 0.0,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
      customerId: json['customerId'] as String? ?? '',
      originalSaleTransactionId:
          json['originalSaleTransactionId'] as String? ?? '',
      swapReason: SwapReason.values.firstWhere(
        (e) => e.name == (json['swapReason'] as String? ?? ''),
        orElse: () => SwapReason.other,
      ), // Fallback
      oldItemCondition: ItemCondition.values.firstWhere(
        (e) => e.name == (json['oldItemCondition'] as String? ?? ''),
        orElse: () => ItemCondition.other,
      ), // Fallback
      processedByStaffId: json['processedByStaffId'] as String?,
      returnNotes: json['returnNotes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customerName': customerName,
      'swapDate': swapDate.toIso8601String(),
      'newId': newId,
      'newItem': newItem,
      'newSize': newSize.name,
      'shoesSize': shoesSize,
      'newQty': newQty,
      'newColor': newColor.name,
      'oldPurchaseId': oldPurchaseId,
      'stockLocation': stockLocation,
      'priceDifference': priceDifference,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'customerId': customerId,
      'originalSaleTransactionId': originalSaleTransactionId,
      'swapReason': swapReason.name,
      'oldItemCondition': oldItemCondition.name,
      'processedByStaffId': processedByStaffId,
      'returnNotes': returnNotes,
    };
  }

  // --- Additional Methods ---

  /// Updates the quantity of the new item in the swap.
  SwapModel updateNewItemQuantity(int newQuantity) {
    if (newQuantity <= 0) {
      throw ArgumentError('New item quantity must be positive');
    }
    return copyWith(newQty: newQuantity, updatedAt: DateTime.now());
  }

  /// Updates the price difference of the swap.
  SwapModel updatePriceDifference(double newPriceDifference) {
    return copyWith(
      priceDifference: newPriceDifference,
      updatedAt: DateTime.now(),
    );
  }

  /// Checks if the swap is older than a specified number of days.
  bool isOlderThan(int days) {
    return swapAgeDays > days;
  }
}

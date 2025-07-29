import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class DisposalModel extends HiveObject {
  final String id;
  final String purchaseId;
  final int qty;
  final DisposalReason reason;
  final String? stockLocation;
  final DateTime disposalDate;
  final String? expenseDescription;
  final double originalItemCostPerUnit;
  final String? expenseId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String itemName; // Denormalized name of the disposed item
  final String? itemSKU; // Denormalized SKU of the disposed item
  final DisposalMethod disposalMethod; // How the item was disposed
  final double?
  disposalExpenseAmount; // Actual monetary cost incurred for disposal (e.g., hauling fees)
  final String?
  processedByStaffId; // ID of the staff member who processed the disposal
  final String? disposalNotes; // Any additional notes about the disposal

  // Existing Computed fields
  int get disposalAgeDays => DateTime.now().difference(disposalDate).inDays;

  // --- NEW COMPUTED FIELDS ---

  /// Calculates the total original cost of the disposed quantity.
  double get totalOriginalItemCost => qty * originalItemCostPerUnit;

  /// Returns true if the disposal incurred an additional expense.
  bool get hasDisposalExpense =>
      disposalExpenseAmount != null && disposalExpenseAmount! > 0;

  /// Returns true if the disposal method involved selling for scrap or other recovery.
  bool get isForScrapOrRecovery =>
      disposalMethod == DisposalMethod.soldForScrap;

  /// Returns a formatted string of the disposal date.
  String get formattedDisposalDate =>
      '${disposalDate.day}/${disposalDate.month}/${disposalDate.year}';

  /// Provides a comprehensive summary of the disposal transaction.
  String get disposalSummary {
    String summary = 'Disposal ID: $id\n';
    summary += 'Date: $formattedDisposalDate\n';
    summary += 'Item: $itemName ';
    if (itemSKU != null && itemSKU!.isNotEmpty) {
      summary += '(SKU: $itemSKU) ';
    }
    summary += '\nQuantity: $qty\n';
    summary +=
        'Reason: ${reason.name.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), ' ')}\n';
    summary +=
        'Method: ${disposalMethod.name.replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), ' ')}\n';
    summary +=
        'Original Item Cost (per unit): \$${originalItemCostPerUnit.toStringAsFixed(2)}\n';
    summary +=
        'Total Original Item Cost: \$${totalOriginalItemCost.toStringAsFixed(2)}\n';
    if (hasDisposalExpense) {
      summary +=
          'Disposal Expense: \$${disposalExpenseAmount!.toStringAsFixed(2)}\n';
    }
    if (expenseDescription != null && expenseDescription!.isNotEmpty) {
      summary += 'Expense Description: $expenseDescription\n';
    }
    if (processedByStaffId != null && processedByStaffId!.isNotEmpty) {
      summary += 'Processed By: $processedByStaffId\n';
    }
    if (disposalNotes != null && disposalNotes!.isNotEmpty) {
      summary += 'Notes: $disposalNotes\n';
    }
    return summary;
  }

  DisposalModel({
    required this.id,
    required this.purchaseId,
    required this.qty,
    required this.reason,
    required this.disposalDate,
    this.stockLocation,
    // --- RENAMED FIELD IN CONSTRUCTOR ---
    this.expenseDescription,
    required this.originalItemCostPerUnit, // Renamed and required
    required this.expenseId,
    this.createdAt,
    this.updatedAt,
    // --- NEW FIELDS IN CONSTRUCTOR ---
    required this.itemName,
    this.itemSKU,
    required this.disposalMethod,
    this.disposalExpenseAmount,
    this.processedByStaffId,
    this.disposalNotes,
  }) {
    if (purchaseId.isEmpty) throw ArgumentError('Stock ID cannot be empty');
    if (qty <= 0) throw ArgumentError('Quantity must be positive');
    if (originalItemCostPerUnit < 0) {
      throw ArgumentError(
        'Original item cost cannot be negative',
      ); // Renamed validation
    }
    if (disposalDate.isAfter(DateTime.now())) {
      throw ArgumentError('Disposal date cannot be in the future');
    }
    if (itemName.isEmpty) {
      throw ArgumentError('Item name cannot be empty');
    }
    if (disposalExpenseAmount != null && disposalExpenseAmount! < 0) {
      // New validation
      throw ArgumentError('Disposal expense amount cannot be negative');
    }
  }

  DisposalModel copyWith({
    String? id,
    String? purchaseId,
    int? qty,
    DisposalReason? reason,
    DateTime? disposalDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? stockLocation,
    String? expenseDescription,
    double? originalItemCostPerUnit,
    String? expenseId,
    String? itemName,
    String? itemSKU,
    DisposalMethod? disposalMethod,
    double? disposalExpenseAmount,
    String? processedByStaffId,
    String? disposalNotes,
  }) {
    return DisposalModel(
      id: id ?? this.id,
      purchaseId: purchaseId ?? this.purchaseId,
      reason: reason ?? this.reason,
      qty: qty ?? this.qty,
      disposalDate: disposalDate ?? this.disposalDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      stockLocation: stockLocation ?? this.stockLocation,
      expenseDescription: expenseDescription ?? this.expenseDescription,
      originalItemCostPerUnit:
          originalItemCostPerUnit ?? this.originalItemCostPerUnit,
      expenseId: expenseId ?? this.expenseId,
      itemName: itemName ?? this.itemName,
      itemSKU: itemSKU ?? this.itemSKU,
      disposalMethod: disposalMethod ?? this.disposalMethod,
      disposalExpenseAmount:
          disposalExpenseAmount ?? this.disposalExpenseAmount,
      processedByStaffId: processedByStaffId ?? this.processedByStaffId,
      disposalNotes: disposalNotes ?? this.disposalNotes,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'purchaseId': purchaseId,
      'qty': qty,
      'reason': reason.name,
      'stockLocation': stockLocation,
      'disposalDate': disposalDate.toIso8601String(),
      'expenseDescription': expenseDescription,
      'originalItemCostPerUnit': originalItemCostPerUnit,
      'expenseId': expenseId,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'itemName': itemName,
      'itemSKU': itemSKU,
      'disposalMethod': disposalMethod.name,
      'disposalExpenseAmount': disposalExpenseAmount,
      'processedByStaffId': processedByStaffId,
      'disposalNotes': disposalNotes,
    };
  }

  factory DisposalModel.fromJson(Map<String, dynamic> json) {
    return DisposalModel(
      id: json['id'] as String? ?? '',
      purchaseId: json['purchaseId'] as String? ?? '',
      qty: (json['qty'] as num?)?.toInt() ?? 0,
      reason: DisposalReason.values.firstWhere(
        (e) => e.name == (json['reason'] as String? ?? ''),
        orElse: () => DisposalReason.other,
      ), // Robust parsing
      stockLocation: json['stockLocation'] as String?,
      disposalDate:
          DateTime.tryParse(json['disposalDate'] as String? ?? '') ??
          DateTime.now(),
      expenseDescription: json['expense'] as String?,
      originalItemCostPerUnit: (json['cost'] as num?)?.toDouble() ?? 0.0,
      expenseId: json['expenseId'] as String?,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json['updatedAt'] as String? ?? ''),
      itemName: json['itemName'] as String? ?? '',
      itemSKU: json['itemSKU'] as String?,
      disposalMethod: DisposalMethod.values.firstWhere(
        (e) => e.name == (json['disposalMethod'] as String? ?? ''),
        orElse: () => DisposalMethod.other,
      ),
      disposalExpenseAmount: (json['disposalExpenseAmount'] as num?)
          ?.toDouble(),
      processedByStaffId: json['processedByStaffId'] as String?,
      disposalNotes: json['disposalNotes'] as String?,
    );
  }
}

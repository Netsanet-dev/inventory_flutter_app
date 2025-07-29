import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/shared/app_exceptions.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';
import 'package:logger/logger.dart';

class PurchaseItemModel extends HiveObject {
  final String id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String purchaseId;
  final StockCategoryModel category;
  final int qty;
  final double unitCost;
  final ItemColors color;
  final Sizes size;
  final int shoesSize;
  final int? minStock;
  final double? discount;
  final double? itemTax;
  final String status;
  final String? stkLocation;
  final bool isReturned;
  final int quantityReferencedBySale;
  final int quantityReferencedByRental;
  final int quantityReferencedBySwap;
  final int quantityReferencedByDisposal;

  // Getters for display and derived properties
  double get subTotal => unreferencedQuantity * unitCost;
  double get totalAfterDiscount => subTotal - (discount ?? 0);
  double get totalWithitemTax => totalAfterDiscount + (itemTax ?? 0);
  String get categoryDisplayName =>
      category.category.replaceAll('_', ' ').toUpperCase();
  String get colorDisplay => color.name.replaceAll('_', ' ').toUpperCase();
  String get sizeDisplay => size.name.replaceAll('_', ' ').toUpperCase();
  bool get isLowStock => minStock != null && unreferencedQuantity <= minStock!;
  double get discountPercentage => subTotal > 0 && discount != null
      ? (discount! / subTotal * 100).clamp(0, 100)
      : 0;
  String get statusDisplay => status.replaceAll('_', ' ').toUpperCase();

  // Reference status getters
  bool get isReferencedbySale => quantityReferencedBySale > 0;
  bool get isReferencedByrental => quantityReferencedByRental > 0;
  bool get isReferencedBySwap => quantityReferencedBySwap > 0;
  bool get isDisposed => quantityReferencedByDisposal > 0;

  // Total referenced quantity
  int get totalReferencedQuantity =>
      quantityReferencedBySale +
      quantityReferencedByRental +
      quantityReferencedBySwap +
      quantityReferencedByDisposal;

  int get unreferencedQuantity => qty - totalReferencedQuantity;

  PurchaseItemModel({
    required this.purchaseId,
    required this.id,
    required this.category,
    required this.qty,
    required this.unitCost,
    this.color = ItemColors.other,
    this.size = Sizes.other,
    this.shoesSize = 38,
    this.minStock,
    this.discount,
    this.itemTax,
    required this.status,
    this.stkLocation,
    this.quantityReferencedBySale = 0,
    this.quantityReferencedByRental = 0,
    this.quantityReferencedBySwap = 0,
    this.quantityReferencedByDisposal = 0,
    this.isReturned = false,
    this.createdAt,
    this.updatedAt,
  }) {
    // Validate quantities
    if (qty < 0) {
      Logger().e('Invalid qty for item $id: $qty');
      throw PurchaseModelException('Total quantity cannot be negative: $qty');
    }
    if (quantityReferencedBySale < 0 ||
        quantityReferencedByRental < 0 ||
        quantityReferencedBySwap < 0 ||
        quantityReferencedByDisposal < 0) {
      Logger().e(
        'Invalid reference quantities for item $id: '
        'sale=$quantityReferencedBySale, rental=$quantityReferencedByRental, '
        'swap=$quantityReferencedBySwap, disposal=$quantityReferencedByDisposal',
      );
      throw PurchaseModelException('Reference quantities cannot be negative.');
    }
    if (totalReferencedQuantity > qty) {
      Logger().e(
        'Total referenced quantity ($totalReferencedQuantity) exceeds total qty ($qty) for item $id',
      );
      throw PurchaseModelException(
        'Total referenced quantity ($totalReferencedQuantity) exceeds total quantity ($qty).',
      );
    }
  }

  PurchaseItemModel copyWith({
    String? id,
    String? purchaseId,
    StockCategoryModel? category,
    int? qty,
    double? unitCost,
    ItemColors? color,
    Sizes? size,
    int? shoesSize,
    int? minStock,
    double? discount,
    double? itemTax,
    String? status,
    String? stkLocation,
    bool? isReturned,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? quantityReferencedBySale,
    int? quantityReferencedByRental,
    int? quantityReferencedBySwap,
    int? quantityReferencedByDisposal,
  }) {
    return PurchaseItemModel(
      id: id ?? this.id,
      purchaseId: purchaseId ?? this.purchaseId,
      category: category ?? this.category,
      qty: qty ?? this.qty,
      unitCost: unitCost ?? this.unitCost,
      color: color ?? this.color,
      size: size ?? this.size,
      shoesSize: shoesSize ?? this.shoesSize,
      minStock: minStock ?? this.minStock,
      discount: discount ?? this.discount,
      itemTax: itemTax ?? this.itemTax,
      status: status ?? this.status,
      stkLocation: stkLocation ?? this.stkLocation,
      isReturned: isReturned ?? this.isReturned,
      quantityReferencedBySale:
          quantityReferencedBySale ?? this.quantityReferencedBySale,
      quantityReferencedByRental:
          quantityReferencedByRental ?? this.quantityReferencedByRental,
      quantityReferencedBySwap:
          quantityReferencedBySwap ?? this.quantityReferencedBySwap,
      quantityReferencedByDisposal:
          quantityReferencedByDisposal ?? this.quantityReferencedByDisposal,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory PurchaseItemModel.fromJson(Map<String, dynamic> json) {
    // Validate and sanitize input
    final qty = json['qty'] as int? ?? 0;
    final saleRef = json['quantityReferencedBySale'] as int? ?? 0;
    final rentalRef = json['quantityReferencedByRental'] as int? ?? 0;
    final swapRef = json['quantityReferencedBySwap'] as int? ?? 0;
    final disposalRef = json['quantityReferencedByDisposal'] as int? ?? 0;
    final totalRef = saleRef + rentalRef + swapRef + disposalRef;

    if (qty < 0 ||
        saleRef < 0 ||
        rentalRef < 0 ||
        swapRef < 0 ||
        disposalRef < 0) {
      Logger().e(
        'Invalid JSON quantities for item ${json['id']}: qty=$qty, refs=[$saleRef, $rentalRef, $swapRef, $disposalRef]',
      );
      throw Exception('Invalid quantities in JSON data.');
    }
    if (totalRef > qty) {
      Logger().e(
        'JSON data inconsistency for item ${json['id']}: '
        'Total referenced ($totalRef) exceeds qty ($qty)',
      );
      throw Exception(
        'Total referenced quantity exceeds total quantity in JSON.',
      );
    }

    return PurchaseItemModel(
      id: json['id'] as String? ?? '',
      purchaseId: json['purchaseId'] as String? ?? '',
      category: StockCategoryModel.fromJson(
        json['category'] as Map<String, dynamic>? ?? {},
      ),
      qty: qty,
      unitCost: (json['purchasePrice'] as num?)?.toDouble() ?? 0.0,
      color: ItemColors.values.firstWhere(
        (e) => e.name == json['color'],
        orElse: () => ItemColors.other,
      ),
      size: Sizes.values.firstWhere(
        (e) => e.name == json['size'],
        orElse: () => Sizes.other,
      ),
      shoesSize: json['shoesSize'] as int? ?? 38,
      minStock: json['stockAlert'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      itemTax: (json['itemTax'] as num?)?.toDouble(),
      stkLocation: json['stkLocation'] as String?,
      status: json['status'] as String? ?? 'Active',
      isReturned: json['isReturned'] as bool? ?? false,
      quantityReferencedBySale: saleRef,
      quantityReferencedByRental: rentalRef,
      quantityReferencedBySwap: swapRef,
      quantityReferencedByDisposal: disposalRef,
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'purchaseId': purchaseId,
      'category': category.toJson(),
      'qty': qty,
      'purchasePrice': unitCost,
      'color': color.name,
      'size': size.name,
      'shoesSize': shoesSize,
      'stockAlert': minStock,
      'discount': discount,
      'itemTax': itemTax,
      'status': status,
      'stkLocation': stkLocation,
      'isReturned': isReturned,
      'quantityReferencedBySale': quantityReferencedBySale,
      'quantityReferencedByRental': quantityReferencedByRental,
      'quantityReferencedBySwap': quantityReferencedBySwap,
      'quantityReferencedByDisposal': quantityReferencedByDisposal,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  // Helper method to adjust total quantity
  PurchaseItemModel adjustQuantity(int change) {
    final newQty = (qty + change).clamp(0, 9999999999999);
    if (newQty < totalReferencedQuantity) {
      Logger().e(
        'Quantity adjustment failed for item $id: '
        'New qty ($newQty) is less than total referenced ($totalReferencedQuantity)',
      );
      throw Exception(
        'New quantity ($newQty) cannot be less than total referenced quantity ($totalReferencedQuantity).',
      );
    }
    return copyWith(qty: newQty, updatedAt: DateTime.now());
  }

  // Helper method to adjust reference quantities safely
  PurchaseItemModel adjustReferenceQuantity(String referenceType, int change) {
    int newSaleRef = quantityReferencedBySale;
    int newRentalRef = quantityReferencedByRental;
    int newSwapRef = quantityReferencedBySwap;
    int newDisposalRef = quantityReferencedByDisposal;

    switch (referenceType) {
      case 'sale':
        newSaleRef = (quantityReferencedBySale + change).clamp(0, qty);
        break;
      case 'rental':
        newRentalRef = (quantityReferencedByRental + change).clamp(0, qty);
        break;
      case 'swap':
        newSwapRef = (quantityReferencedBySwap + change).clamp(0, qty);
        break;
      case 'disposal':
        newDisposalRef = (quantityReferencedByDisposal + change).clamp(0, qty);
        break;
      default:
        throw ArgumentError('Unknown reference type: $referenceType');
    }

    final newModel = copyWith(
      quantityReferencedBySale: newSaleRef,
      quantityReferencedByRental: newRentalRef,
      quantityReferencedBySwap: newSwapRef,
      quantityReferencedByDisposal: newDisposalRef,
    );

    if (newModel.totalReferencedQuantity > newModel.qty) {
      Logger().e(
        'Reference adjustment failed for item $id: '
        'New total referenced (${newModel.totalReferencedQuantity}) exceeds qty (${newModel.qty})',
      );
      throw Exception(
        'Total referenced quantity exceeds total quantity after adjustment.',
      );
    }

    return newModel;
  }

  // Helper method to validate model state
  bool isValidState() {
    final isValid =
        qty >= 0 &&
        quantityReferencedBySale >= 0 &&
        quantityReferencedByRental >= 0 &&
        quantityReferencedBySwap >= 0 &&
        quantityReferencedByDisposal >= 0 &&
        totalReferencedQuantity <= qty &&
        unreferencedQuantity >= 0;
    if (!isValid) {
      Logger().e(
        'Invalid state for item $id: qty=$qty, '
        'saleRef=$quantityReferencedBySale, rentalRef=$quantityReferencedByRental, '
        'swapRef=$quantityReferencedBySwap, disposalRef=$quantityReferencedByDisposal',
      );
    }
    return isValid;
  }

  double calculateEstimatedProfit(double? sellingPricePerUnit) {
    if (sellingPricePerUnit == null || sellingPricePerUnit <= unitCost) {
      return 0.0;
    }
    return (sellingPricePerUnit - unitCost) * unreferencedQuantity;
  }

  String get stockLevelStatus {
    if (unreferencedQuantity <= 0) {
      return 'Out of Stock';
    } else if (isLowStock) {
      return 'Low Stock';
    } else {
      return 'In Stock';
    }
  }

  Duration get stockAge {
    if (createdAt == null) {
      return Duration.zero;
    }
    return DateTime.now().difference(createdAt!);
  }

  bool get isDamaged => status.toLowerCase() == 'damaged';

  /// Returns a concise summary of the purchase item.
  String get itemSummary {
    return '$categoryDisplayName - $colorDisplay, $sizeDisplay (Qty: $qty, Unreferenced: $unreferencedQuantity)';
  }

  double get effectiveUnitCost => unitCost;

  /// Returns the total value of the unreferenced quantity of the item.
  double get unreferencedStockValue => unreferencedQuantity * unitCost;

  PurchaseItemModel markAsReturned() {
    return copyWith(isReturned: true, updatedAt: DateTime.now());
  }

  PurchaseItemModel setMinStockAlert(int newMinStock) {
    if (newMinStock < 0) {
      Logger().e('Invalid minStock value: $newMinStock. Must be non-negative.');
      throw PurchaseModelException('Minimum stock alert cannot be negative.');
    }
    return copyWith(minStock: newMinStock, updatedAt: DateTime.now());
  }

  PurchaseItemModel resetAllReferences() {
    return copyWith(
      quantityReferencedBySale: 0,
      quantityReferencedByRental: 0,
      quantityReferencedBySwap: 0,
      quantityReferencedByDisposal: 0,
      updatedAt: DateTime.now(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseItemModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          purchaseId == other.purchaseId &&
          category == other.category &&
          qty == other.qty &&
          unitCost == other.unitCost &&
          color == other.color &&
          size == other.size &&
          shoesSize == other.shoesSize &&
          minStock == other.minStock &&
          discount == other.discount &&
          itemTax == other.itemTax &&
          status == other.status &&
          stkLocation == other.stkLocation &&
          isReturned == other.isReturned &&
          quantityReferencedBySale == other.quantityReferencedBySale &&
          quantityReferencedByRental == other.quantityReferencedByRental &&
          quantityReferencedBySwap == other.quantityReferencedBySwap &&
          quantityReferencedByDisposal == other.quantityReferencedByDisposal &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt;

  @override
  int get hashCode =>
      id.hashCode ^
      purchaseId.hashCode ^
      category.hashCode ^
      qty.hashCode ^
      unitCost.hashCode ^
      color.hashCode ^
      size.hashCode ^
      shoesSize.hashCode ^
      minStock.hashCode ^
      discount.hashCode ^
      itemTax.hashCode ^
      status.hashCode ^
      (stkLocation?.hashCode ?? 0) ^
      isReturned.hashCode ^
      quantityReferencedBySale.hashCode ^
      quantityReferencedByRental.hashCode ^
      quantityReferencedBySwap.hashCode ^
      quantityReferencedByDisposal.hashCode ^
      (createdAt?.hashCode ?? 0) ^
      (updatedAt?.hashCode ?? 0);
}

// Add a helper extension to PurchaseItemModel to get quantity by reference type string
extension PurchaseItemModelExtension on PurchaseItemModel {
  int getQuantityForReferenceType(String type) {
    switch (type) {
      case 'sale':
        return quantityReferencedBySale;
      case 'rental':
        return quantityReferencedByRental;
      case 'swap':
        return quantityReferencedBySwap;
      case 'disposal':
        return quantityReferencedByDisposal;
      default:
        return 0;
    }
  }
}

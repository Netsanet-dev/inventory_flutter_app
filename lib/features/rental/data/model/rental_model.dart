import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class RentalModel extends HiveObject {
  final String id;
  final String purchaseId; // Assumed to be Stock Item ID
  final String customerId;
  final DateTime startDate;
  final DateTime endDate;
  final double rentalFee;
  final int rentQuantity;
  final double deposit;
  final RentalStatus status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? actualReturnDate; // When the item was actually returned
  final String? notes; // Any specific remarks for this rental
  final String itemName; // Denormalized item name for quick display
  final String? itemSKU; // Denormalized item SKU for quick display
  final String? imagePath; // <-- Added imagePath field

  // Existing Computed fields
  double get totalAmount => (rentalFee + deposit).clamp(0, double.infinity);
  int get rentalDurationDays =>
      endDate.difference(startDate).inDays.clamp(0, double.infinity).toInt();
  bool get isOverdue =>
      status == RentalStatus.active && endDate.isBefore(DateTime.now());

  // Newly Added Computed Fields (from previous response)
  bool get isScheduled => startDate.isAfter(DateTime.now());
  int get daysRemaining {
    if (status == RentalStatus.active || status == RentalStatus.scheduled) {
      final now = DateTime.now();
      if (endDate.isAfter(now)) {
        return endDate.difference(now).inDays;
      }
    }
    return 0;
  }

  double get dailyRentalRate {
    if (rentalDurationDays > 0) {
      return rentalFee / rentalDurationDays;
    }
    return 0.0;
  }

  bool get isPastEndDate => endDate.isBefore(DateTime.now());
  bool get isFinished =>
      status == RentalStatus.completed ||
      status == RentalStatus.cancelled ||
      status == RentalStatus.expired;

  RentalModel({
    required this.id,
    required this.purchaseId,
    required this.customerId,
    required this.startDate,
    required this.endDate,
    required this.rentalFee,
    required this.rentQuantity,
    required this.deposit,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.actualReturnDate,
    this.notes,
    required this.itemName,
    this.itemSKU,
    this.imagePath, // <-- Added to constructor
  }) {
    if (purchaseId.isEmpty) {
      throw ArgumentError('Stock item ID cannot be empty');
    }
    if (customerId.isEmpty) throw ArgumentError('Customer ID cannot be empty');
    if (rentalFee < 0) {
      throw ArgumentError('RentalModel fee cannot be negative');
    }
    if (deposit < 0) throw ArgumentError('Deposit cannot be negative');
    if (endDate.isBefore(startDate)) {
      throw ArgumentError('End date cannot be before start date');
    }
    if (itemName.isEmpty) {
      throw ArgumentError('Item name cannot be empty');
    }
  }

  RentalModel copyWith({
    String? id,
    String? purchaseId,
    String? customerId,
    DateTime? startDate,
    DateTime? endDate,
    double? rentalFee,
    int? rentQuantity,
    double? deposit,
    RentalStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? actualReturnDate,
    String? notes,
    String? itemName,
    String? itemSKU,
    String? imagePath, // <-- Added to copyWith
  }) {
    return RentalModel(
      id: id ?? this.id,
      purchaseId: purchaseId ?? this.purchaseId,
      customerId: customerId ?? this.customerId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      rentalFee: rentalFee ?? this.rentalFee,
      rentQuantity: rentQuantity ?? this.rentQuantity,
      deposit: deposit ?? this.deposit,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      actualReturnDate: actualReturnDate ?? this.actualReturnDate,
      notes: notes ?? this.notes,
      itemName: itemName ?? this.itemName,
      itemSKU: itemSKU ?? this.itemSKU,
      imagePath: imagePath ?? this.imagePath, // <-- Added
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'purchaseId': purchaseId,
    'customerId': customerId,
    'startDate': startDate.toIso8601String(),
    'endDate': endDate.toIso8601String(),
    'rentalFee': rentalFee,
    'rentQuantity': rentQuantity,
    'deposit': deposit,
    'status': status.name,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'actualReturnDate': actualReturnDate?.toIso8601String(),
    'notes': notes,
    'itemName': itemName,
    'itemSKU': itemSKU,
    'imagePath': imagePath, // <-- Added
  };

  factory RentalModel.fromJson(Map<String, dynamic> json) {
    return RentalModel(
      id: json['id'] as String,
      purchaseId: json['purchaseId'] as String,
      customerId: json['customerId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      rentalFee: (json['rentalFee'] as num).toDouble(),
      rentQuantity: (json['rentQuantity'] as num).toInt(),
      deposit: (json['deposit'] as num).toDouble(),
      status: json['status'] != null
          ? RentalStatus.values.byName(json['status'] as String)
          : RentalStatus.expired,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
      actualReturnDate: json['actualReturnDate'] != null
          ? DateTime.parse(json['actualReturnDate'] as String)
          : null,
      notes: json['notes'] as String?,
      itemName: json['itemName'] as String,
      itemSKU: json['itemSKU'] as String?,
      imagePath: json['imagePath'] as String?, // <-- Added
    );
  }

  // Existing Methods
  int calculateDuration() {
    return endDate.difference(startDate).inDays;
  }

  RentalModel extendRental(DateTime newEndDate) {
    if (newEndDate.isBefore(endDate)) {
      throw Exception('New end date must be after the current end date');
    }
    return copyWith(endDate: newEndDate, updatedAt: DateTime.now());
  }

  double calculateOverduePenalty(double dailyPenaltyRate) {
    if (isOverdue && actualReturnDate == null) {
      final overdueDays = DateTime.now().difference(endDate).inDays;
      return (overdueDays * dailyPenaltyRate).clamp(0, double.infinity);
    }
    return 0.0;
  }

  RentalModel markAsReturned() {
    if (status == RentalStatus.completed) {
      return this;
    }
    return copyWith(
      status: RentalStatus.completed,
      actualReturnDate: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  RentalModel markAsCancelled() {
    if (status == RentalStatus.cancelled) {
      return this;
    }
    return copyWith(status: RentalStatus.cancelled, updatedAt: DateTime.now());
  }

  bool isActiveNow() {
    final now = DateTime.now();
    return status == RentalStatus.active &&
        !startDate.isAfter(now) &&
        !endDate.isBefore(now);
  }

  int get actualRentalDurationDays {
    if (actualReturnDate != null) {
      return actualReturnDate!
          .difference(startDate)
          .inDays
          .clamp(0, double.infinity)
          .toInt();
    }
    return rentalDurationDays;
  }
}

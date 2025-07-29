import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_item_model.dart';
import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/extensions/stock_category_localization_extension.dart';

class StockCategoryModel extends HiveObject {
  final String id;
  final String originalCategory;
  final String category;
  final String? subcategory;
  final String? subcategory2;
  final String? imagePath;
  final int priority;
  final bool isReferencedByPurchase;
  final bool isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  StockCategoryModel({
    required this.id,
    required this.originalCategory,
    required this.category,
    this.subcategory,
    this.subcategory2,
    this.imagePath,
    this.isReferencedByPurchase = false,
    this.createdAt,
    this.updatedAt,
    this.priority = 0,
    this.isActive = true,
  }) {
    if (category.trim().isEmpty) {
      throw ArgumentError.value(
        category,
        'category',
        'category name cannot be empty',
      );
    }
    if (id.trim().isEmpty) {
      throw ArgumentError.value(id, 'id', 'ID cannot be empty');
    }
  }

  String getCategory(BuildContext context) =>
      AppLocalizations.of(context)!.lookup(category);

  String? getSubcategory(BuildContext context) => subcategory != null
      ? AppLocalizations.of(context)!.lookup(subcategory!)
      : null;

  String? getSubcategory2(BuildContext context) => subcategory2 != null
      ? AppLocalizations.of(context)!.lookup(subcategory2!)
      : null;

  StockCategoryModel copyWith({
    String? id,
    String? originalCategory,
    String? category,
    String? subcategory,
    String? subcategory2,
    String? imagePath,
    bool? isReferencedByPurchase,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    int? priority,
    bool? isActive,
    String? notes,
    int? version,
  }) {
    return StockCategoryModel(
      id: id ?? this.id,
      originalCategory: originalCategory ?? this.originalCategory,
      category: category ?? this.category,
      subcategory: subcategory ?? this.subcategory,
      subcategory2: subcategory2 ?? this.subcategory2,
      imagePath: imagePath ?? this.imagePath,
      isReferencedByPurchase:
          isReferencedByPurchase ?? this.isReferencedByPurchase,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? DateTime.now(),
      priority: priority ?? this.priority,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'originalCategory': originalCategory,
      'category': category,
      'subcategory1': subcategory,
      'subcategory2': subcategory2,
      'imagePath': imagePath,
      'isReferencedByPurchase': isReferencedByPurchase,
      'priority': priority,
      'isActive': isActive,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Create a StockCategoryModel directly from a PurchaseItemModel
  factory StockCategoryModel.fromItem(PurchaseItemModel item) {
    return StockCategoryModel(
      id: item.id,
      originalCategory: item.category.category,
      category: item.category.category,
      subcategory: item.category.subcategory,
      subcategory2: item.category.subcategory2,
      isReferencedByPurchase: true,
    );
  }

  factory StockCategoryModel.fromJson(Map<String, dynamic> json) {
    return StockCategoryModel(
      id: json['id'] as String,
      originalCategory: json['originalCategory'] as String,
      category: json['category'] as String,
      subcategory: json['subcategory1'] as String?,
      subcategory2: json['subcategory2'] as String?,
      imagePath: json['imagePath'] as String?,
      isReferencedByPurchase: json['isReferencedByPurchase'] as bool,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
      priority: (json['priority'] as int?) ?? 0,
      isActive: (json['isActive'] as bool?) ?? true,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StockCategoryModel &&
        other.id == id &&
        other.originalCategory == originalCategory &&
        other.category == category &&
        other.subcategory == subcategory &&
        other.subcategory2 == subcategory2;
  }

  @override
  int get hashCode =>
      Object.hash(id, originalCategory, category, subcategory, subcategory2);

  @override
  String toString() {
    return 'StockCategoryModel(id: $id, category: $category, subcategory: $subcategory, subcategory2: $subcategory2)';
  }
}

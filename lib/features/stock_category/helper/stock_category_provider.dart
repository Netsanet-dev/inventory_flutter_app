import 'package:flutter/material.dart';
import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/service/stock_category_service.dart';
import 'package:inventory_flutter_app/shared/app_strings.dart';
import 'package:inventory_flutter_app/utils/app_id_generate.dart';
import 'package:inventory_flutter_app/utils/categories_data.dart';

class DefaultCategoriesProvider {
  final StockCategoryService repo = StockCategoryService();

  Future<List<StockCategoryModel>> getDefaultCategories(Locale locale) async {
    final now = DateTime.now();
    final seen = <String>{};
    final result = <StockCategoryModel>[];
    final existingCategories = await repo.getAllCategories();
    final existingMap = {
      for (var cat in existingCategories)
        '$cat.originalCategory|$cat.subcategory|$cat.subcategory2': cat,
    };
    for (final categoryEntry in categoryData.entries) {
      final categoryKey = categoryEntry.key;
      final categoryData = categoryEntry.value;
      final categoryName = categoryData['nameKey'] as String;

      for (final subcategoryEntry in categoryData['subcategories'].entries) {
        final subcategoryKey = subcategoryEntry.key;
        final subcategoryData = subcategoryEntry.value;
        final subcategoryName = subcategoryData['nameKey'] as String;

        for (final brandEntry in subcategoryData['brands'].entries) {
          final brandKey = brandEntry.key;
          final brandData = brandEntry.value;
          final brandName = brandData['nameKey'] as String;
          final key = '$categoryKey|$subcategoryKey|$brandKey';

          if (seen.add(key)) {
            final existingCat = existingMap[key];
            result.add(
              StockCategoryModel(
                id: existingCat?.id ?? Id.generate(),
                originalCategory: categoryKey,
                category: categoryName,
                subcategory: subcategoryName,
                subcategory2: brandName,
                imagePath:
                    brandData['imagePath'] ?? AppStrings.defaultImagePath,
                priority: 1,
                isActive: true,
                createdAt: now,
                updatedAt: now,
              ),
            );
          }
        }
      }
    }

    return result;
  }
}

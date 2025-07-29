import 'dart:ui';

import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';
import 'package:inventory_flutter_app/features/stock_category/helper/stock_category_provider.dart';

class RetranslateCategoriesUseCase {
  final StockCategoryRepository _repo;
  final DefaultCategoriesProvider _defaultCategoriesProvider;

  RetranslateCategoriesUseCase(this._repo, this._defaultCategoriesProvider);

  Future<void> execute(Locale locale) async {
    try {
      final defaults = await _defaultCategoriesProvider.getDefaultCategories(
        locale,
      );
      final existingCategories = await _repo.getAllCategories();
      final updatedCategories = <StockCategoryModel>[];

      for (final existing in existingCategories) {
        final matchingDefault = defaults.firstWhere(
          (def) =>
              def.originalCategory == existing.originalCategory &&
              def.subcategory == existing.subcategory &&
              def.subcategory2 == existing.subcategory2,
          orElse: () => existing,
        );
        if (matchingDefault.category != existing.category ||
            matchingDefault.subcategory != existing.subcategory ||
            matchingDefault.subcategory2 != existing.subcategory2) {
          updatedCategories.add(
            existing.copyWith(
              category: matchingDefault.category,
              subcategory: matchingDefault.subcategory,
              subcategory2: matchingDefault.subcategory2,
              updatedAt: DateTime.now(),
            ),
          );
        }
      }

      if (updatedCategories.isNotEmpty) {
        await _repo.updateCategoriesBatch(updatedCategories);
      }
    } catch (e) {
      // Handle or rethrow the exception as needed
      rethrow;
    }
  }
}

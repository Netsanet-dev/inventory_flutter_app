import 'dart:ui';

import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';
import 'package:inventory_flutter_app/features/stock_category/helper/stock_category_provider.dart';

class AddDefaultCategoriesUseCase {
  final StockCategoryRepository _repo;
  final DefaultCategoriesProvider _defaultCategoriesProvider;

  AddDefaultCategoriesUseCase(this._repo, this._defaultCategoriesProvider);

  Future<bool> execute(Locale locale) async {
    try {
      final defaults = await _defaultCategoriesProvider.getDefaultCategories(
        locale,
      );
      final existingCategories = await _repo.getAllCategories();
      final existingKeys = existingCategories
          .map(
            (cat) => _generateCategoryKey(
              cat.originalCategory,
              cat.subcategory,
              cat.subcategory2,
            ),
          )
          .toSet();
      final toUpdate = <StockCategoryModel>[];
      final toAdd = <StockCategoryModel>[];

      for (var cat in defaults) {
        final key = _generateCategoryKey(
          cat.originalCategory,
          cat.subcategory,
          cat.subcategory2,
        );
        if (existingKeys.contains(key)) {
          final existing = existingCategories.firstWhere(
            (e) =>
                _generateCategoryKey(
                  e.originalCategory,
                  e.subcategory,
                  e.subcategory2,
                ) ==
                key,
          );
          if (existing.imagePath != cat.imagePath) {
            toUpdate.add(cat.copyWith(id: existing.id));
          }
        } else {
          toAdd.add(cat);
        }
      }

      if (toUpdate.isNotEmpty) {
        await _repo.updateCategoriesBatch(toUpdate);
      }
      if (toAdd.isNotEmpty) {
        await _repo.addCategoriesBatch(toAdd);
      }
      return toUpdate.isNotEmpty || toAdd.isNotEmpty;
    } catch (e) {
      // Handle or rethrow the exception as needed
      rethrow;
    }
  }

  String _generateCategoryKey(
    String originalCategory,
    String? subcategory,
    String? subcategory2,
  ) {
    return '${originalCategory}_${subcategory ?? ''}_${subcategory2 ?? ''}';
  }
}

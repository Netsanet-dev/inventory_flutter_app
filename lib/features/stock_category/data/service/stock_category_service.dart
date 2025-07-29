import 'dart:async';

import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class StockCategoryService {
  final Box<StockCategoryModel> _box;
  static const logContext = 'StockCategoryService';

  StockCategoryService() : _box = Hive.box('categoriesBox');

  // --- Category Management ---
  Future<void> addCategory(StockCategoryModel category) async {
    try {
      await _box.put(category.id, category);
    } catch (e, st) {
      LoggerUtil.logError(logContext, 'Failed to add category', e, st);
      rethrow;
    }
  }

  Future<void> updateCategory(StockCategoryModel category) async {
    try {
      await _box.put(category.id, category);
    } catch (e, st) {
      LoggerUtil.logError(logContext, 'Failed to update category', e, st);
      rethrow;
    }
  }

  Future<void> deleteCategory(String categoryId) async {
    try {
      await _box.delete(categoryId);
    } catch (e, st) {
      LoggerUtil.logError(
        logContext,
        'Failed to delete category: $categoryId',
        e,
        st,
      );
      rethrow;
    }
  }

  Future<StockCategoryModel?> getCategory(String id) async {
    try {
      final result = _box.get(id);
      result != null
          ? LoggerUtil.logInfo(logContext, 'Category retrieved: ${result.id}')
          : LoggerUtil.logWarn(logContext, 'Category not found for id: $id');
      return result;
    } catch (e, st) {
      LoggerUtil.logError(
        logContext,
        'Failed to retrieve category: $id',
        e,
        st,
      );
      rethrow;
    }
  }

  Future<void> addCategoriesBatch(List<StockCategoryModel> categories) async {
    try {
      final map = {for (var cat in categories) cat.id: cat};
      await _box.putAll(map);
      await _box.flush();
    } catch (e, st) {
      LoggerUtil.logError(logContext, 'Failed to add categories batch', e, st);
      rethrow;
    }
  }

  Future<void> updateCategoriesBatch(
    List<StockCategoryModel> categories,
  ) async {
    try {
      final map = {for (var cat in categories) cat.id: cat};
      await _box.putAll(map);
    } catch (e, s) {
      LoggerUtil.logError(
        logContext,
        'Failed to update categories batch',
        e,
        s,
      );
      rethrow;
    }
  }

  Future<List<StockCategoryModel>> getAllCategories() async {
    try {
      final categories = _box.values.toList();
      return categories;
    } catch (e, st) {
      LoggerUtil.logError(
        logContext,
        'Failed to retrieve all categories',
        e,
        st,
      );
      rethrow;
    }
  }

  // --- Reactive Watcher ---
  Stream<BoxEvent> watchCategories() {
    return _box.watch();
  }
}

import 'dart:async';

import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/service/stock_category_service.dart';
import 'package:inventory_flutter_app/shared/app_cache_manager.dart';
import 'package:inventory_flutter_app/shared/app_events.dart';
import 'package:inventory_flutter_app/shared/app_exceptions.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';
import 'package:rxdart/rxdart.dart';

/// Service class for managing StockCategoryModel data, including caching and logging.
class StockCategoryRepository {
  final StockCategoryService _service;
  static const String _logContext = 'StockCategoryRepository';

  // Use the generic CacheManager for both lists and single items
  final CacheManager<String, List<StockCategoryModel>> _listCache;
  final CacheManager<String, StockCategoryModel> _singleItemCache;

  StockCategoryRepository(this._service)
    : _listCache = CacheManager(logContext: 'CategoryListCache'),
      _singleItemCache = CacheManager(logContext: 'CategorySingleCache');

  /// Adds a new category after ensuring its uniqueness.
  Future<void> addCategory(StockCategoryModel category) async {
    try {
      if (await existsCategory(
        originalCategory: category.originalCategory,
        subcategory: category.subcategory,
        subcategory2: category.subcategory2,
      )) {
        throw CategoryRepoException(
          'Category with this key combination already exists',
        );
      }

      await _service.addCategory(category);
      _singleItemCache.put(category.id, category);
      _listCache.clear();
      LoggerUtil.logInfo(
        _logContext,
        'Cleared list caches due to category add: ${category.id}',
      );
    } catch (e, st) {
      LoggerUtil.logError(_logContext, 'Failed to add category', e, st);
      rethrow;
    }
  }

  /// Updates an existing category.
  Future<void> updateCategory(StockCategoryModel category) async {
    try {
      if (!await _service.getCategory(category.id).then((c) => c != null)) {
        throw CategoryRepoException(
          'Category with id ${category.id} does not exist',
        );
      }
      await _service.updateCategory(category);
      _singleItemCache.put(category.id, category);
      _invalidateAffectedCacheEntries([category]);
      LoggerUtil.logInfo(
        _logContext,
        'Category ${category.id} updated and caches invalidated.',
      );
    } catch (e, st) {
      LoggerUtil.logError(_logContext, 'Failed to update category', e, st);
      rethrow;
    }
  }

  /// Deletes a category by its ID.
  Future<void> deleteCategory(String categoryId) async {
    try {
      final category = await _service.getCategory(categoryId);
      if (category == null) {
        throw CategoryRepoException(
          'Category with id $categoryId does not exist',
        );
      }
      if (category.isReferencedByPurchase) {
        throw CategoryRepoException('Category is referenced by a purchase');
      }
      await _service.deleteCategory(categoryId);
      _singleItemCache.remove(categoryId);
      _listCache.clear();
      LoggerUtil.logInfo(
        _logContext,
        'Cleared list caches due to category delete: $categoryId',
      );
    } catch (e, st) {
      LoggerUtil.logError(_logContext, 'Failed to delete category', e, st);
      rethrow;
    }
  }

  /// Retrieves a single category by its ID, using cache if available and fresh.
  Future<StockCategoryModel?> getCategory(String id) async {
    final cachedItem = _singleItemCache.get(id);
    if (cachedItem != null) {
      return cachedItem;
    }
    try {
      final category = await _service.getCategory(id);
      if (category != null) {
        _singleItemCache.put(id, category);
        LoggerUtil.logInfo(
          _logContext,
          'Category $id fetched from repo and cached.',
        );
      }
      return category;
    } catch (e, st) {
      LoggerUtil.logError(_logContext, 'Failed to fetch category', e, st);
      rethrow;
    }
  }

  Future<void> addCategoriesBatch(List<StockCategoryModel> categories) async {
    try {
      // Ensure uniqueness for all categories before adding
      for (var category in categories) {
        if (await existsCategory(
          originalCategory: category.originalCategory,
          subcategory: category.subcategory,
          subcategory2: category.subcategory2,
        )) {
          throw CategoryRepoException(
            'Category with key ${category.originalCategory}_${category.subcategory ?? ''}_${category.subcategory2 ?? ''} already exists',
          );
        }
      }
      await _service.addCategoriesBatch(categories);
      for (var category in categories) {
        _singleItemCache.put(category.id, category);
      }
      _listCache.clear();
    } catch (e, st) {
      LoggerUtil.logError(_logContext, 'Failed to add categories batch', e, st);
      rethrow;
    }
  }

  Future<void> updateCategoriesBatch(
    List<StockCategoryModel> categories,
  ) async {
    try {
      for (var category in categories) {
        if (!await _service.getCategory(category.id).then((c) => c != null)) {
          throw CategoryRepoException(
            'Category with id ${category.id} does not exist',
          );
        }
      }
      await _service.updateCategoriesBatch(categories);
      for (var category in categories) {
        _singleItemCache.put(category.id, category);
      }
      _invalidateAffectedCacheEntries(categories);
    } catch (e, st) {
      LoggerUtil.logError(
        _logContext,
        'Failed to update categories batch',
        e,
        st,
      );
      rethrow;
    }
  }

  Future<List<StockCategoryModel>> getCategoriesPaginated({
    bool? onlyActive,
    int? limit,
    int? offset,
    String? searchQuery,
  }) async {
    try {
      final cacheKey = _generateCacheKey(
        onlyActive,
        limit,
        offset,
        searchQuery,
      );
      final cachedList = _listCache.get(cacheKey);
      if (cachedList != null) {
        LoggerUtil.logInfo(
          _logContext,
          'Retrieved ${cachedList.length} categories from cache',
        );
        return cachedList;
      }
      var categories = await _service.getAllCategories();
      if (onlyActive == true) {
        categories = categories.where((c) => c.isActive).toList();
      }
      if (searchQuery?.isNotEmpty ?? false) {
        final query = searchQuery!.toLowerCase();
        categories = categories
            .where(
              (c) =>
                  c.originalCategory.toLowerCase().contains(query) ||
                  (c.subcategory?.toLowerCase().contains(query) ?? false) ||
                  (c.subcategory2?.toLowerCase().contains(query) ?? false),
            )
            .toList();
      }
      final start = offset ?? 0;
      final end = limit != null
          ? (start + limit).clamp(0, categories.length)
          : categories.length;
      final result = categories.sublist(start, end);
      _listCache.put(cacheKey, result);
      return result;
    } catch (e, st) {
      LoggerUtil.logError(
        _logContext,
        'Failed to retrieve paginated categories',
        e,
        st,
      );
      return [];
    }
  }

  Future<bool> existsCategory({
    required String originalCategory,
    String? subcategory,
    String? subcategory2,
    String? excludeId,
  }) async {
    try {
      final categories = await _service.getAllCategories();
      return categories.any(
        (cat) =>
            cat.originalCategory == originalCategory &&
            cat.subcategory == subcategory &&
            cat.subcategory2 == subcategory2 &&
            (excludeId == null || cat.id != excludeId),
      );
    } catch (e, st) {
      LoggerUtil.logError(
        _logContext,
        'Failed to check category existence',
        e,
        st,
      );
      return false;
    }
  }

  /// Retrieves all categories. Not typically cached as it can be large and needs to be fresh.
  Future<List<StockCategoryModel>> getAllCategories() async {
    try {
      final categories = await _service.getAllCategories();
      LoggerUtil.logInfo(
        _logContext,
        'Retrieved ${categories.length} categories (all)',
      );
      return categories;
    } catch (e, st) {
      LoggerUtil.logError(
        _logContext,
        'Failed to retrieve all categories',
        e,
        st,
      );
      rethrow;
    }
  }

  Future<List<String>> getAllCategoryNames() async {
    try {
      final categories = await _service.getAllCategories();
      return categories
          .map(
            (c) => _generateCategoryKey(
              c.originalCategory,
              c.subcategory,
              c.subcategory2,
            ),
          )
          .toList();
    } catch (e, st) {
      LoggerUtil.logError(
        _logContext,
        'Failed to retrieve category names',
        e,
        st,
      );
      return [];
    }
  }

  /// Generates a unique cache key for list queries.
  String _generateCacheKey(
    bool? onlyActive,
    int? limit,
    int? offset,
    String? searchQuery,
  ) {
    return 'active:$onlyActive-limit:${limit ?? 0}-offset:${offset ?? 0}-query:${searchQuery ?? 'none'}';
  }

  void _invalidateAffectedCacheEntries(List<StockCategoryModel> items) {
    _listCache.invalidateWhere((key, cachedData) {
      return cachedData.data.any(
        (cachedItem) =>
            items.any((updatedItem) => cachedItem.id == updatedItem.id),
      );
    });
    for (var item in items) {
      _singleItemCache.remove(item.id);
    }
    LoggerUtil.logInfo(
      _logContext,
      'Invalidated cache entries for affected purchase items.',
    );
  }

  /// Generates a combined key for category uniqueness checks.
  String _generateCategoryKey(
    String category,
    String? subcategory,
    String? subcategory2,
  ) {
    return '${category}_${subcategory ?? ''}_${subcategory2 ?? ''}';
  }

  Stream<StockCategoryEvent> watchCategories() {
    return _service
        .watchCategories()
        .map((event) {
          if (event.deleted) {
            return StockCategoryDeleted(event.key as String);
          } else if (event.value is StockCategoryModel) {
            final cat = event.value as StockCategoryModel;
            return _singleItemCache.get(cat.id) != null
                ? StockCategoryUpdated(cat)
                : StockCategoryAdded(cat);
          }
          return null;
        })
        .whereType<StockCategoryEvent>()
        .debounceTime(const Duration(milliseconds: 100));
  }
}

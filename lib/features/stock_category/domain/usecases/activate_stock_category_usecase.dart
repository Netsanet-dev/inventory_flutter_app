import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';

class ActivateCategoryUseCase {
  final StockCategoryRepository _repo;

  ActivateCategoryUseCase(this._repo);

  Future<void> execute(String id) async {
    try {
      final category = await _repo.getCategory(id);
      if (category == null) throw Exception('Category not found');
      if (!category.isActive) {
        final updated = category.copyWith(
          isActive: true,
          updatedAt: DateTime.now(),
        );
        await _repo.updateCategory(updated);
      }
    } catch (e) {
      // Handle or rethrow the exception as needed
      rethrow;
    }
  }
}

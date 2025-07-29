import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';

class ListCategoriesUseCase {
  final StockCategoryRepository _repo;

  ListCategoriesUseCase(this._repo);

  Future<List<StockCategoryModel>> execute({
    bool? onlyActive,
    int? limit,
    int? offset,
    String? searchQuery,
  }) async {
    try {
      return await _repo.getCategoriesPaginated(
        onlyActive: onlyActive,
        limit: limit,
        offset: offset,
        searchQuery: searchQuery,
      );
    } catch (e) {
      // Handle or rethrow the exception as needed
      rethrow;
    }
  }
}

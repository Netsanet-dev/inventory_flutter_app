import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class AddCategoryUseCase {
  final StockCategoryRepository _repo;
  static const logContext = 'AddCategoryUseCase';

  AddCategoryUseCase(this._repo);

  Future<void> execute(StockCategoryModel category) async {
    try {
      if (await _repo.existsCategory(
        originalCategory: category.originalCategory,
        subcategory: category.subcategory,
        subcategory2: category.subcategory2,
      )) {
        throw Exception('A category with this key combination already exists');
      }
      await _repo.addCategory(category);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to add category', e, s);
      rethrow;
    }
  }
}

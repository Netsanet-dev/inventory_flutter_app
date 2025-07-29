import 'package:get/get.dart';
import 'package:inventory_flutter_app/features/stock_category/data/repository/stock_category_repository.dart';
import 'package:inventory_flutter_app/features/stock_category/data/service/stock_category_service.dart';
import 'package:inventory_flutter_app/features/stock_category/helper/stock_category_provider.dart';
import 'package:inventory_flutter_app/shared/nav_controller.dart';

/// MainBinding class for GetX dependency injection.
/// This class extends Bindings and is responsible for
/// putting all the necessary repositories, services, and controllers
/// into the GetX dependency manager.
class MainBinding extends Bindings {
  @override
  void dependencies() {
    // Repositories
    Get.put<StockCategoryService>(StockCategoryService(), permanent: true);
    // Get.put<ExpenseRepo>(ExpenseRepo(), permanent: true);
    // Get.put<PurchaseItemRepo>(PurchaseItemRepo(), permanent: true);
    // Get.put<PurchaseRepo>(PurchaseRepo(), permanent: true);
    // Get.put<SalesRepo>(SalesRepo(), permanent: true);
    // Get.put<SalesItemRepo>(SalesItemRepo(), permanent: true);
    // Get.put<SwapRepo>(SwapRepo(), permanent: true);
    // Get.put<RentalRepo>(RentalRepo(), permanent: true);
    // Get.put<DisposalRepo>(DisposalRepo(), permanent: true);

    // Services
    Get.put<DefaultCategoriesProvider>(
      DefaultCategoriesProvider(),
      permanent: true,
    );
    Get.put<StockCategoryRepository>(
      StockCategoryRepository(Get.find<StockCategoryService>()),
      permanent: true,
    );
    // Get.put<ExpenseService>(
    //   ExpenseService(repo: Get.find<ExpenseRepo>()),
    //   permanent: true,
    // );
    // Get.put<PurchaseItemService>(
    //   PurchaseItemService(repo: Get.find<PurchaseItemRepo>()),
    //   permanent: true,
    // );
    // Get.put<PurchaseService>(
    //   PurchaseService(repo: Get.find<PurchaseRepo>()),
    //   permanent: true,
    // );

    // // Managers (Domain Layer)
    // Get.put<PurchaseManager>(
    //   PurchaseManager(
    //     purchaseService: Get.find<PurchaseService>(),
    //     purchaseItemService: Get.find<PurchaseItemService>(),
    //   ),
    //   permanent: true,
    // );
    // Get.put<SaleService>(
    //   SaleService(repo: Get.find<SalesRepo>()),
    //   permanent: true,
    // );
    // Get.put<SalesItemService>(
    //   SalesItemService(
    //     repo: Get.find<SalesItemRepo>(),
    //     purchaseManager: Get.find<PurchaseManager>(),
    //   ),
    //   permanent: true,
    // );
    // Get.put<SalesManager>(
    //   SalesManager(
    //     saleService: Get.find<SaleService>(),
    //     itemService: Get.find<SalesItemService>(),
    //   ),
    //   permanent: true,
    // );
    // Get.put<RentalService>(
    //   RentalService(
    //     repo: Get.find<RentalRepo>(),
    //     purchaseManager: Get.find<PurchaseManager>(),
    //   ),
    //   permanent: true,
    // );
    // Get.put<SwapService>(
    //   SwapService(
    //     repo: Get.find<SwapRepo>(),
    //     purchaseManager: Get.find<PurchaseManager>(),
    //   ),
    //   permanent: true,
    // );
    // Get.put<DisposalService>(
    //   DisposalService(
    //     repo: Get.find<DisposalRepo>(),
    //     purchaseManager: Get.find<PurchaseManager>(),
    //   ),
    //   permanent: true,
    // );

    // Controllers
    Get.put<NavigationController>(
      NavigationController(),
      tag: 'nav_controller',
      permanent: true,
    );
    // Get.put<CategoryController>(
    //   CategoryController(Get.find<CategoryService>()),
    //   permanent: true,
    // );
    // Get.put<CategoryFormController>(CategoryFormController(), permanent: true);
    // Get.put<PurchaseController>(
    //   PurchaseController(manager: Get.find<PurchaseManager>()),
    //   permanent: true,
    // );
    // Get.put<PurchaseItemController>(
    //   PurchaseItemController(purchaseManager: Get.find<PurchaseManager>()),
    //   permanent: true,
    // );
    // Get.put(
    //   ExpenseController(expenseServices: Get.find<ExpenseService>()),
    //   permanent: true,
    // );
    // Get.put<SaleController>(
    //   SaleController(salesManager: Get.find<SalesManager>()),
    //   permanent: true,
    // );
    // Get.put<SalesItemController>(
    //   SalesItemController(salesManager: Get.find<SalesManager>()),
    //   permanent: true,
    // );
    // Get.put<SwapController>(
    //   SwapController(swapService: Get.find<SwapService>()),
    //   permanent: true,
    // );
    // Get.put<RentalController>(
    //   RentalController(rentalService: Get.find<RentalService>()),
    //   permanent: true,
    // );
    // Get.put<DisposalController>(
    //   DisposalController(disposalService: Get.find<DisposalService>()),
    //   permanent: true,
    // );
  }
}

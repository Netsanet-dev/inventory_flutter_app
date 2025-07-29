import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:inventory_flutter_app/features/appConfig/data/model/app_config_model.dart';
import 'package:inventory_flutter_app/features/disposal/data/model/disposal_model.dart';
import 'package:inventory_flutter_app/features/expense/data/expense_model.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_item_model.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_model.dart';
import 'package:inventory_flutter_app/features/rental/data/model/rental_model.dart';
import 'package:inventory_flutter_app/features/sales/data/model/sales_item_model.dart';
import 'package:inventory_flutter_app/features/sales/data/model/sales_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/swap/data/model/swap_model.dart';
import 'package:inventory_flutter_app/utils/app_string_constant.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveInitializer {
  static Future<void> initHive() async {
    final appDocumentDir = await path_provider
        .getApplicationDocumentsDirectory();

    final hiveDir = '${appDocumentDir.path}/inventory_app/';
    await Hive.initFlutter(hiveDir);

    //Hive.registerAdapters();

    if (!Hive.isBoxOpen(AppStringConstant.appConfigModel)) {
      await Hive.openBox<AppConfigModel>(AppStringConstant.appConfigModel);
    }
    if (!Hive.isBoxOpen('categoriesBox')) {
      await Hive.openBox<StockCategoryModel>('categoriesBox');
    }

    if (!Hive.isBoxOpen('expense')) {
      await Hive.openBox<ExpenseModel>('expense');
    }

    if (!Hive.isBoxOpen('itemToPurchaseIndex')) {
      await Hive.openBox<String>('itemToPurchaseIndex');
    }
    if (!Hive.isBoxOpen('itemToSaleIndex')) {
      await Hive.openBox<String>('itemToSaleIndex');
    }

    if (!Hive.isBoxOpen('purchaseItemBox')) {
      await Hive.openBox<PurchaseItemModel>('purchaseItemBox');
    }
    if (!Hive.isBoxOpen('purchaseBox')) {
      await Hive.openBox<PurchaseModel>('purchaseBox');
    }
    if (!Hive.isBoxOpen('salesItemBox')) {
      await Hive.openBox<SalesItemModel>('salesItemBox');
    }
    if (!Hive.isBoxOpen('saleBox')) {
      await Hive.openBox<SaleModel>('saleBox');
    }
    if (!Hive.isBoxOpen('swapBox')) {
      await Hive.openBox<SwapModel>('swapBox');
    }
    if (!Hive.isBoxOpen('rentalBox')) {
      await Hive.openBox<RentalModel>('rentalBox');
    }
    if (!Hive.isBoxOpen('disposalBox')) {
      await Hive.openBox<DisposalModel>('disposalBox');
    }
  }
}

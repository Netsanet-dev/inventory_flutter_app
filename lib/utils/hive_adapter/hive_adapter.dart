import 'package:hive_ce/hive.dart';
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
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

@GenerateAdapters([
  AdapterSpec<AppConfigModel>(),

  // Inventory Models
  AdapterSpec<StockCategoryModel>(),
  AdapterSpec<DisposalModel>(),
  AdapterSpec<ExpenseModel>(),
  AdapterSpec<PurchaseItemModel>(),
  AdapterSpec<PurchaseModel>(),
  AdapterSpec<RentalModel>(),
  AdapterSpec<SalesItemModel>(),
  AdapterSpec<SaleModel>(),
  AdapterSpec<SwapModel>(),

  // Enums
  AdapterSpec<ItemColors>(),
  AdapterSpec<LanguageOption>(),
  AdapterSpec<AppTheme>(),
  AdapterSpec<Sizes>(),
  AdapterSpec<PurchaseStatus>(),
  AdapterSpec<AccountType>(),
  AdapterSpec<PaymentMethod>(),
  AdapterSpec<RentalStatus>(),
  AdapterSpec<NormalBalance>(),
  AdapterSpec<PaymentStatus>(),
  AdapterSpec<DisposalReason>(),
  AdapterSpec<TransactionType>(),
  AdapterSpec<AccountStatus>(),
  AdapterSpec<Currency>(),
  AdapterSpec<AccountCategory>(),
  AdapterSpec<ExpenseCategory>(),
  AdapterSpec<ReportFormat>(),
  AdapterSpec<ReportPeriod>(),
  AdapterSpec<ReportStatus>(),
  AdapterSpec<ReportCategory>(),

  AdapterSpec<DisposalSortField>(),
  AdapterSpec<SortOrder>(),
  AdapterSpec<SwapSortField>(),
  AdapterSpec<RentalSortField>(),

  AdapterSpec<ItemCondition>(),
  AdapterSpec<DisposalMethod>(),
  AdapterSpec<SwapReason>(),
])
part 'hive_adapter.g.dart';

// ignore: unused_element
void _() {}

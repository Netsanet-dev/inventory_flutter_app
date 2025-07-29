// Base model interface for entities with IDs
import 'package:inventory_flutter_app/features/disposal/data/model/disposal_model.dart';
import 'package:inventory_flutter_app/features/expense/data/expense_model.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_item_model.dart';
import 'package:inventory_flutter_app/features/purchase/data/model/purchase_model.dart';
import 'package:inventory_flutter_app/features/rental/data/model/rental_model.dart';
import 'package:inventory_flutter_app/features/sales/data/model/sales_item_model.dart';
import 'package:inventory_flutter_app/features/sales/data/model/sales_model.dart';
import 'package:inventory_flutter_app/features/stock_category/data/model/stock_category_model.dart';
import 'package:inventory_flutter_app/features/swap/data/model/swap_model.dart';

abstract class BaseModel {
  String get id;
}

// Base event class for common properties and behavior (all events must have an ID)
abstract class BaseEvent {
  String get id;
}

sealed class PurchaseEvent extends BaseEvent {
  PurchaseEvent(); // Good practice for sealed classes
}

class PurchaseAdded extends PurchaseEvent {
  final PurchaseModel entity; // Use 'entity' for consistency, or 'purchase'
  PurchaseAdded(this.entity);
  @override
  String get id => entity.id;
}

class PurchaseUpdated extends PurchaseEvent {
  // Changed from PurchaseChanged
  final PurchaseModel entity;
  PurchaseUpdated(this.entity);
  @override
  String get id => entity.id;
}

class PurchaseDeleted extends PurchaseEvent {
  @override
  final String id; // This directly implements BaseEvent's 'id'
  PurchaseDeleted(this.id);
}

// Specific Purchase Item Events
sealed class PurchaseItemEvent extends BaseEvent {
  PurchaseItemEvent();
}

class PurchaseItemAdded extends PurchaseItemEvent {
  final PurchaseItemModel entity;
  PurchaseItemAdded(this.entity);
  @override
  String get id => entity.id;
}

class PurchaseItemUpdated extends PurchaseItemEvent {
  final PurchaseItemModel entity;
  PurchaseItemUpdated(this.entity);
  @override
  String get id => entity.id;
}

class PurchaseItemDeleted extends PurchaseItemEvent {
  @override
  final String id;
  PurchaseItemDeleted(this.id);
}

// Specific Expense Events
sealed class ExpenseEvent extends BaseEvent {
  ExpenseEvent();
}

class ExpenseAdded extends ExpenseEvent {
  final ExpenseModel entity;
  ExpenseAdded(this.entity);
  @override
  String get id => entity.id;
}

class ExpenseUpdated extends ExpenseEvent {
  final ExpenseModel entity;
  ExpenseUpdated(this.entity);
  @override
  String get id => entity.id;
}

class ExpenseDeleted extends ExpenseEvent {
  @override
  final String id;
  ExpenseDeleted(this.id);
}

sealed class DisposalEvent extends BaseEvent {
  DisposalEvent();
}

class DisposalAdded extends DisposalEvent {
  final DisposalModel entity;
  DisposalAdded(this.entity);
  @override
  String get id => entity.id;
}

class DisposalUpdated extends DisposalEvent {
  final DisposalModel entity;
  DisposalUpdated(this.entity);
  @override
  String get id => entity.id;
}

class DisposalDeleted extends DisposalEvent {
  @override
  final String id;
  DisposalDeleted(this.id);
}

// Specific Sales Item Events
sealed class SalesItemEvent extends BaseEvent {
  final PurchaseItemModel? affectedPurchaseItem;
  SalesItemEvent({this.affectedPurchaseItem});
}

class SalesItemAdded extends SalesItemEvent {
  final SalesItemModel entity;
  SalesItemAdded(this.entity, {super.affectedPurchaseItem});
  @override
  String get id => entity.id;
}

class SalesItemUpdated extends SalesItemEvent {
  final SalesItemModel entity;
  SalesItemUpdated(this.entity, {super.affectedPurchaseItem});
  @override
  String get id => entity.id;
}

class SalesItemDeleted extends SalesItemEvent {
  @override
  final String id;
  SalesItemDeleted(this.id, {super.affectedPurchaseItem});
}

// Specific Sale Events
sealed class SaleEvent extends BaseEvent {
  SaleEvent();
}

class SaleAdded extends SaleEvent {
  final SaleModel entity;
  SaleAdded(this.entity);
  @override
  String get id => entity.id;
}

class SaleUpdated extends SaleEvent {
  final SaleModel entity;
  SaleUpdated(this.entity);
  @override
  String get id => entity.id;
}

class SaleDeleted extends SaleEvent {
  @override
  final String id;
  SaleDeleted(this.id);
}

class SalesItemReturned extends SalesItemEvent {
  // NEW: SalesItemReturned event
  @override
  final String id; // ID of the returned sales item
  final SalesItemModel?
  entity; // Optional: The updated sales item with returned status
  SalesItemReturned(this.id, {this.entity, super.affectedPurchaseItem});
}

// ------------------ Category Events ---------------
sealed class StockCategoryEvent extends BaseEvent {
  StockCategoryEvent();
}

class StockCategoryAdded extends StockCategoryEvent {
  final StockCategoryModel entity;
  StockCategoryAdded(this.entity);
  @override
  String get id => entity.id;
}

class StockCategoryUpdated extends StockCategoryEvent {
  final StockCategoryModel entity;
  StockCategoryUpdated(this.entity);
  @override
  String get id => entity.id;
}

class StockCategoryDeleted extends StockCategoryEvent {
  @override
  final String id;
  StockCategoryDeleted(this.id);
}

// ----------- Rental Events ------------------------
abstract class RentalEvent extends BaseEvent {}

class RentalAdded extends RentalEvent {
  final RentalModel entity;
  RentalAdded(this.entity);

  @override
  String get id => entity.id;
}

class RentalUpdated extends RentalEvent {
  final RentalModel entity;
  RentalUpdated(this.entity);

  @override
  String get id => entity.id;
}

class RentalDeleted extends RentalEvent {
  @override
  final String id;
  RentalDeleted(this.id);
}

// ------------------ Swap Events -------------------
abstract class SwapEvent extends BaseEvent {}

class SwapAdded extends SwapEvent {
  final SwapModel entity;
  SwapAdded(this.entity);
  @override
  String get id => entity.id;
}

class SwapUpdated extends SwapEvent {
  final SwapModel entity;
  SwapUpdated(this.entity);
  @override
  String get id => entity.id;
}

class SwapDeleted extends SwapEvent {
  @override
  final String id;
  SwapDeleted(this.id);
}

// // Unified Purchase Manager Event (remains the same and should now work)
class PurchaseManagerEvent {
  final PurchaseEvent? purchaseEvent;
  final PurchaseItemEvent? itemEvent;

  // Private constructor to ensure only one event type is present
  PurchaseManagerEvent._({this.purchaseEvent, this.itemEvent})
    : assert(purchaseEvent != null || itemEvent != null),
      assert(
        purchaseEvent == null || itemEvent == null,
      ); // Only one can be non-null

  // Factory constructors for convenience
  factory PurchaseManagerEvent.purchase(PurchaseEvent purchaseEvent) {
    return PurchaseManagerEvent._(purchaseEvent: purchaseEvent);
  }

  factory PurchaseManagerEvent.item(PurchaseItemEvent itemEvent) {
    return PurchaseManagerEvent._(itemEvent: itemEvent);
  }

  // Helper getter to get the ID from either event type
  String get id => purchaseEvent?.id ?? itemEvent?.id ?? '';

  @override
  String toString() {
    if (purchaseEvent != null) {
      return 'PurchaseManagerEvent(purchaseEvent: $purchaseEvent)';
    } else if (itemEvent != null) {
      return 'PurchaseManagerEvent(itemEvent: $itemEvent)';
    }
    return 'PurchaseManagerEvent(null)';
  }
}

/// Unified event for sales and sales items
class SalesManagerEvent {
  final SaleEvent? saleEvent;
  final SalesItemEvent? saleItemEvent;

  SalesManagerEvent.sale(this.saleEvent) : saleItemEvent = null;
  SalesManagerEvent.saleItem(this.saleItemEvent) : saleEvent = null;

  String get id => saleEvent?.id ?? saleItemEvent?.id ?? '';
}

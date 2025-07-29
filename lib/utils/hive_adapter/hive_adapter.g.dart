// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapter.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AppConfigModelAdapter extends TypeAdapter<AppConfigModel> {
  @override
  final typeId = 0;

  @override
  AppConfigModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppConfigModel(
      ownerName: fields[0] as String,
      shopName: fields[1] as String,
      reconciliationThreshold: (fields[7] as num).toInt(),
      inventoryAlertLevel: fields[8] == null ? 5 : (fields[8] as num).toInt(),
      taxRate: fields[9] == null ? 0.0 : (fields[9] as num).toDouble(),
      logoPath: fields[10] as String?,
      language: fields[5] == null
          ? LanguageOption.english
          : fields[5] as LanguageOption,
      theme: fields[6] == null ? AppTheme.light : fields[6] as AppTheme,
      currency: fields[11] == null ? Currency.birr : fields[11] as Currency,
      shopAddress: fields[3] as String?,
      phoneNumber: fields[2] as String?,
      tinNumber: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppConfigModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.ownerName)
      ..writeByte(1)
      ..write(obj.shopName)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.shopAddress)
      ..writeByte(4)
      ..write(obj.tinNumber)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.theme)
      ..writeByte(7)
      ..write(obj.reconciliationThreshold)
      ..writeByte(8)
      ..write(obj.inventoryAlertLevel)
      ..writeByte(9)
      ..write(obj.taxRate)
      ..writeByte(10)
      ..write(obj.logoPath)
      ..writeByte(11)
      ..write(obj.currency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppConfigModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StockCategoryModelAdapter extends TypeAdapter<StockCategoryModel> {
  @override
  final typeId = 1;

  @override
  StockCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockCategoryModel(
      id: fields[0] as String,
      originalCategory: fields[1] as String,
      category: fields[2] as String,
      subcategory: fields[3] as String?,
      subcategory2: fields[4] as String?,
      imagePath: fields[5] as String?,
      isReferencedByPurchase: fields[7] == null ? false : fields[7] as bool,
      createdAt: fields[9] as DateTime?,
      updatedAt: fields[10] as DateTime?,
      priority: fields[6] == null ? 0 : (fields[6] as num).toInt(),
      isActive: fields[8] == null ? true : fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, StockCategoryModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.originalCategory)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.subcategory)
      ..writeByte(4)
      ..write(obj.subcategory2)
      ..writeByte(5)
      ..write(obj.imagePath)
      ..writeByte(6)
      ..write(obj.priority)
      ..writeByte(7)
      ..write(obj.isReferencedByPurchase)
      ..writeByte(8)
      ..write(obj.isActive)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DisposalModelAdapter extends TypeAdapter<DisposalModel> {
  @override
  final typeId = 2;

  @override
  DisposalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DisposalModel(
      id: fields[0] as String,
      purchaseId: fields[1] as String,
      qty: (fields[2] as num).toInt(),
      reason: fields[3] as DisposalReason,
      disposalDate: fields[5] as DateTime,
      stockLocation: fields[4] as String?,
      expenseDescription: fields[6] as String?,
      originalItemCostPerUnit: (fields[7] as num).toDouble(),
      expenseId: fields[8] as String?,
      createdAt: fields[9] as DateTime?,
      updatedAt: fields[10] as DateTime?,
      itemName: fields[11] as String,
      itemSKU: fields[12] as String?,
      disposalMethod: fields[13] as DisposalMethod,
      disposalExpenseAmount: (fields[14] as num?)?.toDouble(),
      processedByStaffId: fields[15] as String?,
      disposalNotes: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DisposalModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.purchaseId)
      ..writeByte(2)
      ..write(obj.qty)
      ..writeByte(3)
      ..write(obj.reason)
      ..writeByte(4)
      ..write(obj.stockLocation)
      ..writeByte(5)
      ..write(obj.disposalDate)
      ..writeByte(6)
      ..write(obj.expenseDescription)
      ..writeByte(7)
      ..write(obj.originalItemCostPerUnit)
      ..writeByte(8)
      ..write(obj.expenseId)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.itemName)
      ..writeByte(12)
      ..write(obj.itemSKU)
      ..writeByte(13)
      ..write(obj.disposalMethod)
      ..writeByte(14)
      ..write(obj.disposalExpenseAmount)
      ..writeByte(15)
      ..write(obj.processedByStaffId)
      ..writeByte(16)
      ..write(obj.disposalNotes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisposalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExpenseModelAdapter extends TypeAdapter<ExpenseModel> {
  @override
  final typeId = 3;

  @override
  ExpenseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseModel(
      id: fields[0] as String,
      amount: (fields[7] as num).toDouble(),
      category: fields[8] as ExpenseCategory,
      paymentMethod: fields[9] as PaymentMethod,
      purchaseId: fields[6] as String?,
      tax: fields[5] == null ? 0.0 : (fields[5] as num).toDouble(),
      vendor: fields[3] as String?,
      date: fields[4] as DateTime,
      imageReceipt: fields[1] as String?,
      reciptId: fields[2] as String?,
      isPrepaid: fields[12] == null ? false : fields[12] as bool,
      fromInventory: fields[13] == null ? false : fields[13] as bool,
      isReferencedByPurchae: fields[14] == null ? false : fields[14] as bool,
      createdAt: fields[10] as DateTime?,
      updatedAt: fields[11] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenseModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imageReceipt)
      ..writeByte(2)
      ..write(obj.reciptId)
      ..writeByte(3)
      ..write(obj.vendor)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.tax)
      ..writeByte(6)
      ..write(obj.purchaseId)
      ..writeByte(7)
      ..write(obj.amount)
      ..writeByte(8)
      ..write(obj.category)
      ..writeByte(9)
      ..write(obj.paymentMethod)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt)
      ..writeByte(12)
      ..write(obj.isPrepaid)
      ..writeByte(13)
      ..write(obj.fromInventory)
      ..writeByte(14)
      ..write(obj.isReferencedByPurchae);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PurchaseItemModelAdapter extends TypeAdapter<PurchaseItemModel> {
  @override
  final typeId = 4;

  @override
  PurchaseItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PurchaseItemModel(
      purchaseId: fields[3] as String,
      id: fields[0] as String,
      category: fields[4] as StockCategoryModel,
      qty: (fields[5] as num).toInt(),
      unitCost: (fields[6] as num).toDouble(),
      color: fields[7] == null ? ItemColors.other : fields[7] as ItemColors,
      size: fields[8] == null ? Sizes.other : fields[8] as Sizes,
      shoesSize: fields[9] == null ? 38 : (fields[9] as num).toInt(),
      minStock: (fields[10] as num?)?.toInt(),
      discount: (fields[11] as num?)?.toDouble(),
      itemTax: (fields[12] as num?)?.toDouble(),
      status: fields[13] as String,
      stkLocation: fields[14] as String?,
      quantityReferencedBySale: fields[16] == null
          ? 0
          : (fields[16] as num).toInt(),
      quantityReferencedByRental: fields[17] == null
          ? 0
          : (fields[17] as num).toInt(),
      quantityReferencedBySwap: fields[18] == null
          ? 0
          : (fields[18] as num).toInt(),
      quantityReferencedByDisposal: fields[19] == null
          ? 0
          : (fields[19] as num).toInt(),
      isReturned: fields[15] == null ? false : fields[15] as bool,
      createdAt: fields[1] as DateTime?,
      updatedAt: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, PurchaseItemModel obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.purchaseId)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.qty)
      ..writeByte(6)
      ..write(obj.unitCost)
      ..writeByte(7)
      ..write(obj.color)
      ..writeByte(8)
      ..write(obj.size)
      ..writeByte(9)
      ..write(obj.shoesSize)
      ..writeByte(10)
      ..write(obj.minStock)
      ..writeByte(11)
      ..write(obj.discount)
      ..writeByte(12)
      ..write(obj.itemTax)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.stkLocation)
      ..writeByte(15)
      ..write(obj.isReturned)
      ..writeByte(16)
      ..write(obj.quantityReferencedBySale)
      ..writeByte(17)
      ..write(obj.quantityReferencedByRental)
      ..writeByte(18)
      ..write(obj.quantityReferencedBySwap)
      ..writeByte(19)
      ..write(obj.quantityReferencedByDisposal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PurchaseModelAdapter extends TypeAdapter<PurchaseModel> {
  @override
  final typeId = 5;

  @override
  PurchaseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PurchaseModel(
      id: fields[0] as String,
      invoiceNumber: fields[1] as String?,
      date: fields[2] as DateTime,
      vendorName: fields[3] as String?,
      vendorContact: fields[4] as String?,
      items: (fields[5] as List).cast<PurchaseItemModel>(),
      expense: (fields[6] as List).cast<ExpenseModel>(),
      discount: (fields[7] as num?)?.toDouble(),
      buyTax: (fields[8] as num?)?.toDouble(),
      paidAmount: (fields[9] as num?)?.toDouble(),
      paymentMethod: fields[10] as PaymentMethod,
      createdAt: fields[12] as DateTime?,
      updatedAt: fields[13] as DateTime?,
      status: fields[11] as PurchaseStatus?,
      transactionType: fields[14] == null
          ? TransactionType.purchase
          : fields[14] as TransactionType,
      isReferencedbySale: fields[15] == null ? false : fields[15] as bool,
      isReferencedByrental: fields[16] == null ? false : fields[16] as bool,
      isReferencedBySwap: fields[17] == null ? false : fields[17] as bool,
      isDisposed: fields[18] == null ? false : fields[18] as bool,
      isReturned: fields[19] == null ? false : fields[19] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PurchaseModel obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.invoiceNumber)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.vendorName)
      ..writeByte(4)
      ..write(obj.vendorContact)
      ..writeByte(5)
      ..write(obj.items)
      ..writeByte(6)
      ..write(obj.expense)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.buyTax)
      ..writeByte(9)
      ..write(obj.paidAmount)
      ..writeByte(10)
      ..write(obj.paymentMethod)
      ..writeByte(11)
      ..write(obj.status)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.transactionType)
      ..writeByte(15)
      ..write(obj.isReferencedbySale)
      ..writeByte(16)
      ..write(obj.isReferencedByrental)
      ..writeByte(17)
      ..write(obj.isReferencedBySwap)
      ..writeByte(18)
      ..write(obj.isDisposed)
      ..writeByte(19)
      ..write(obj.isReturned);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RentalModelAdapter extends TypeAdapter<RentalModel> {
  @override
  final typeId = 6;

  @override
  RentalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RentalModel(
      id: fields[0] as String,
      purchaseId: fields[1] as String,
      customerId: fields[2] as String,
      startDate: fields[3] as DateTime,
      endDate: fields[4] as DateTime,
      rentalFee: (fields[5] as num).toDouble(),
      rentQuantity: (fields[6] as num).toInt(),
      deposit: (fields[7] as num).toDouble(),
      status: fields[8] as RentalStatus,
      createdAt: fields[9] as DateTime?,
      updatedAt: fields[10] as DateTime?,
      actualReturnDate: fields[11] as DateTime?,
      notes: fields[12] as String?,
      itemName: fields[13] as String,
      itemSKU: fields[14] as String?,
      imagePath: fields[15] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RentalModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.purchaseId)
      ..writeByte(2)
      ..write(obj.customerId)
      ..writeByte(3)
      ..write(obj.startDate)
      ..writeByte(4)
      ..write(obj.endDate)
      ..writeByte(5)
      ..write(obj.rentalFee)
      ..writeByte(6)
      ..write(obj.rentQuantity)
      ..writeByte(7)
      ..write(obj.deposit)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedAt)
      ..writeByte(11)
      ..write(obj.actualReturnDate)
      ..writeByte(12)
      ..write(obj.notes)
      ..writeByte(13)
      ..write(obj.itemName)
      ..writeByte(14)
      ..write(obj.itemSKU)
      ..writeByte(15)
      ..write(obj.imagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RentalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SalesItemModelAdapter extends TypeAdapter<SalesItemModel> {
  @override
  final typeId = 7;

  @override
  SalesItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SalesItemModel(
      group: fields[6] as String?,
      productName: fields[5] as String?,
      unit: fields[9] as String?,
      discount: fields[10] == null ? 0.0 : (fields[10] as num?)?.toDouble(),
      salesPerson: fields[11] as String?,
      isReturned: fields[14] == null ? false : fields[14] as bool,
      tax: (fields[15] as num?)?.toDouble(),
      id: fields[0] as String,
      saleId: fields[1] as String,
      purchaseId: fields[4] as String,
      quantitySold: (fields[7] as num).toInt(),
      sellingPricePerUnit: (fields[8] as num).toDouble(),
      costPrice: (fields[13] as num).toDouble(),
      saleCount: fields[12] == null ? 1 : (fields[12] as num).toInt(),
      createdAt: fields[2] as DateTime?,
      updatedAt: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, SalesItemModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.saleId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.updatedAt)
      ..writeByte(4)
      ..write(obj.purchaseId)
      ..writeByte(5)
      ..write(obj.productName)
      ..writeByte(6)
      ..write(obj.group)
      ..writeByte(7)
      ..write(obj.quantitySold)
      ..writeByte(8)
      ..write(obj.sellingPricePerUnit)
      ..writeByte(9)
      ..write(obj.unit)
      ..writeByte(10)
      ..write(obj.discount)
      ..writeByte(11)
      ..write(obj.salesPerson)
      ..writeByte(12)
      ..write(obj.saleCount)
      ..writeByte(13)
      ..write(obj.costPrice)
      ..writeByte(14)
      ..write(obj.isReturned)
      ..writeByte(15)
      ..write(obj.tax);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SalesItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaleModelAdapter extends TypeAdapter<SaleModel> {
  @override
  final typeId = 8;

  @override
  SaleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaleModel(
      id: fields[0] as String,
      invoiceNumer: fields[3] as String?,
      customerId: fields[4] as String?,
      status: fields[9] as PaymentStatus?,
      saleItems: (fields[7] as List).cast<SalesItemModel>(),
      date: fields[6] as DateTime,
      customerName: fields[5] as String,
      paymentMethod: fields[8] as PaymentMethod,
      paidAmount: (fields[10] as num?)?.toDouble(),
      createdAt: fields[1] as DateTime?,
      updatedAt: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, SaleModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.invoiceNumer)
      ..writeByte(4)
      ..write(obj.customerId)
      ..writeByte(5)
      ..write(obj.customerName)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.saleItems)
      ..writeByte(8)
      ..write(obj.paymentMethod)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.paidAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SwapModelAdapter extends TypeAdapter<SwapModel> {
  @override
  final typeId = 9;

  @override
  SwapModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SwapModel(
      id: fields[0] as String,
      customerName: fields[3] as String?,
      swapDate: fields[4] as DateTime,
      newId: fields[5] as String,
      newItem: fields[6] as String,
      newColor: fields[10] as ItemColors,
      newQty: (fields[9] as num).toInt(),
      newSize: fields[7] as Sizes,
      shoesSize: fields[8] == null ? 38 : (fields[8] as num).toInt(),
      oldPurchaseId: fields[11] as String,
      priceDifference: (fields[13] as num).toDouble(),
      stockLocation: fields[12] as String?,
      createdAt: fields[1] as DateTime?,
      updatedAt: fields[2] as DateTime?,
      customerId: fields[14] as String,
      originalSaleTransactionId: fields[15] as String,
      swapReason: fields[16] as SwapReason,
      oldItemCondition: fields[17] as ItemCondition,
      processedByStaffId: fields[18] as String?,
      returnNotes: fields[19] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SwapModel obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.customerName)
      ..writeByte(4)
      ..write(obj.swapDate)
      ..writeByte(5)
      ..write(obj.newId)
      ..writeByte(6)
      ..write(obj.newItem)
      ..writeByte(7)
      ..write(obj.newSize)
      ..writeByte(8)
      ..write(obj.shoesSize)
      ..writeByte(9)
      ..write(obj.newQty)
      ..writeByte(10)
      ..write(obj.newColor)
      ..writeByte(11)
      ..write(obj.oldPurchaseId)
      ..writeByte(12)
      ..write(obj.stockLocation)
      ..writeByte(13)
      ..write(obj.priceDifference)
      ..writeByte(14)
      ..write(obj.customerId)
      ..writeByte(15)
      ..write(obj.originalSaleTransactionId)
      ..writeByte(16)
      ..write(obj.swapReason)
      ..writeByte(17)
      ..write(obj.oldItemCondition)
      ..writeByte(18)
      ..write(obj.processedByStaffId)
      ..writeByte(19)
      ..write(obj.returnNotes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwapModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemColorsAdapter extends TypeAdapter<ItemColors> {
  @override
  final typeId = 10;

  @override
  ItemColors read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemColors.red;
      case 1:
        return ItemColors.blue;
      case 2:
        return ItemColors.yellow;
      case 3:
        return ItemColors.black;
      case 4:
        return ItemColors.white;
      case 5:
        return ItemColors.green;
      case 6:
        return ItemColors.orange;
      case 7:
        return ItemColors.brown;
      case 8:
        return ItemColors.grey;
      case 9:
        return ItemColors.pink;
      case 10:
        return ItemColors.purple;
      case 11:
        return ItemColors.silver;
      case 12:
        return ItemColors.gold;
      case 13:
        return ItemColors.kaki;
      case 14:
        return ItemColors.other;
      default:
        return ItemColors.red;
    }
  }

  @override
  void write(BinaryWriter writer, ItemColors obj) {
    switch (obj) {
      case ItemColors.red:
        writer.writeByte(0);
      case ItemColors.blue:
        writer.writeByte(1);
      case ItemColors.yellow:
        writer.writeByte(2);
      case ItemColors.black:
        writer.writeByte(3);
      case ItemColors.white:
        writer.writeByte(4);
      case ItemColors.green:
        writer.writeByte(5);
      case ItemColors.orange:
        writer.writeByte(6);
      case ItemColors.brown:
        writer.writeByte(7);
      case ItemColors.grey:
        writer.writeByte(8);
      case ItemColors.pink:
        writer.writeByte(9);
      case ItemColors.purple:
        writer.writeByte(10);
      case ItemColors.silver:
        writer.writeByte(11);
      case ItemColors.gold:
        writer.writeByte(12);
      case ItemColors.kaki:
        writer.writeByte(13);
      case ItemColors.other:
        writer.writeByte(14);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemColorsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LanguageOptionAdapter extends TypeAdapter<LanguageOption> {
  @override
  final typeId = 11;

  @override
  LanguageOption read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LanguageOption.english;
      case 1:
        return LanguageOption.amharic;
      default:
        return LanguageOption.english;
    }
  }

  @override
  void write(BinaryWriter writer, LanguageOption obj) {
    switch (obj) {
      case LanguageOption.english:
        writer.writeByte(0);
      case LanguageOption.amharic:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageOptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppThemeAdapter extends TypeAdapter<AppTheme> {
  @override
  final typeId = 12;

  @override
  AppTheme read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppTheme.system;
      case 1:
        return AppTheme.light;
      case 2:
        return AppTheme.dark;
      default:
        return AppTheme.system;
    }
  }

  @override
  void write(BinaryWriter writer, AppTheme obj) {
    switch (obj) {
      case AppTheme.system:
        writer.writeByte(0);
      case AppTheme.light:
        writer.writeByte(1);
      case AppTheme.dark:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppThemeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SizesAdapter extends TypeAdapter<Sizes> {
  @override
  final typeId = 13;

  @override
  Sizes read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Sizes.XS;
      case 1:
        return Sizes.S;
      case 2:
        return Sizes.M;
      case 3:
        return Sizes.L;
      case 4:
        return Sizes.XL;
      case 5:
        return Sizes.XXL;
      case 6:
        return Sizes.XXXL;
      case 7:
        return Sizes.other;
      default:
        return Sizes.XS;
    }
  }

  @override
  void write(BinaryWriter writer, Sizes obj) {
    switch (obj) {
      case Sizes.XS:
        writer.writeByte(0);
      case Sizes.S:
        writer.writeByte(1);
      case Sizes.M:
        writer.writeByte(2);
      case Sizes.L:
        writer.writeByte(3);
      case Sizes.XL:
        writer.writeByte(4);
      case Sizes.XXL:
        writer.writeByte(5);
      case Sizes.XXXL:
        writer.writeByte(6);
      case Sizes.other:
        writer.writeByte(7);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PurchaseStatusAdapter extends TypeAdapter<PurchaseStatus> {
  @override
  final typeId = 14;

  @override
  PurchaseStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PurchaseStatus.draft;
      case 1:
        return PurchaseStatus.ordered;
      case 2:
        return PurchaseStatus.received;
      case 3:
        return PurchaseStatus.paid;
      case 4:
        return PurchaseStatus.cancelled;
      case 5:
        return PurchaseStatus.returned;
      case 6:
        return PurchaseStatus.completed;
      default:
        return PurchaseStatus.draft;
    }
  }

  @override
  void write(BinaryWriter writer, PurchaseStatus obj) {
    switch (obj) {
      case PurchaseStatus.draft:
        writer.writeByte(0);
      case PurchaseStatus.ordered:
        writer.writeByte(1);
      case PurchaseStatus.received:
        writer.writeByte(2);
      case PurchaseStatus.paid:
        writer.writeByte(3);
      case PurchaseStatus.cancelled:
        writer.writeByte(4);
      case PurchaseStatus.returned:
        writer.writeByte(5);
      case PurchaseStatus.completed:
        writer.writeByte(6);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccountTypeAdapter extends TypeAdapter<AccountType> {
  @override
  final typeId = 15;

  @override
  AccountType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AccountType.asset;
      case 1:
        return AccountType.contraAsset;
      case 2:
        return AccountType.liability;
      case 3:
        return AccountType.equity;
      case 4:
        return AccountType.revenue;
      case 5:
        return AccountType.income;
      case 6:
        return AccountType.expense;
      default:
        return AccountType.asset;
    }
  }

  @override
  void write(BinaryWriter writer, AccountType obj) {
    switch (obj) {
      case AccountType.asset:
        writer.writeByte(0);
      case AccountType.contraAsset:
        writer.writeByte(1);
      case AccountType.liability:
        writer.writeByte(2);
      case AccountType.equity:
        writer.writeByte(3);
      case AccountType.revenue:
        writer.writeByte(4);
      case AccountType.income:
        writer.writeByte(5);
      case AccountType.expense:
        writer.writeByte(6);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaymentMethodAdapter extends TypeAdapter<PaymentMethod> {
  @override
  final typeId = 16;

  @override
  PaymentMethod read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PaymentMethod.cash;
      case 1:
        return PaymentMethod.bankTransfer;
      case 2:
        return PaymentMethod.check;
      case 3:
        return PaymentMethod.barter;
      case 4:
        return PaymentMethod.credit;
      case 5:
        return PaymentMethod.none;
      default:
        return PaymentMethod.cash;
    }
  }

  @override
  void write(BinaryWriter writer, PaymentMethod obj) {
    switch (obj) {
      case PaymentMethod.cash:
        writer.writeByte(0);
      case PaymentMethod.bankTransfer:
        writer.writeByte(1);
      case PaymentMethod.check:
        writer.writeByte(2);
      case PaymentMethod.barter:
        writer.writeByte(3);
      case PaymentMethod.credit:
        writer.writeByte(4);
      case PaymentMethod.none:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentMethodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RentalStatusAdapter extends TypeAdapter<RentalStatus> {
  @override
  final typeId = 17;

  @override
  RentalStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RentalStatus.active;
      case 1:
        return RentalStatus.expired;
      case 2:
        return RentalStatus.pending;
      case 3:
        return RentalStatus.cancelled;
      case 4:
        return RentalStatus.overdue;
      case 5:
        return RentalStatus.returned;
      case 6:
        return RentalStatus.completed;
      case 7:
        return RentalStatus.scheduled;
      default:
        return RentalStatus.active;
    }
  }

  @override
  void write(BinaryWriter writer, RentalStatus obj) {
    switch (obj) {
      case RentalStatus.active:
        writer.writeByte(0);
      case RentalStatus.expired:
        writer.writeByte(1);
      case RentalStatus.pending:
        writer.writeByte(2);
      case RentalStatus.cancelled:
        writer.writeByte(3);
      case RentalStatus.overdue:
        writer.writeByte(4);
      case RentalStatus.returned:
        writer.writeByte(5);
      case RentalStatus.completed:
        writer.writeByte(6);
      case RentalStatus.scheduled:
        writer.writeByte(7);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RentalStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NormalBalanceAdapter extends TypeAdapter<NormalBalance> {
  @override
  final typeId = 18;

  @override
  NormalBalance read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return NormalBalance.debit;
      case 1:
        return NormalBalance.credit;
      default:
        return NormalBalance.debit;
    }
  }

  @override
  void write(BinaryWriter writer, NormalBalance obj) {
    switch (obj) {
      case NormalBalance.debit:
        writer.writeByte(0);
      case NormalBalance.credit:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NormalBalanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaymentStatusAdapter extends TypeAdapter<PaymentStatus> {
  @override
  final typeId = 19;

  @override
  PaymentStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PaymentStatus.pending;
      case 1:
        return PaymentStatus.completed;
      case 2:
        return PaymentStatus.cancelled;
      case 3:
        return PaymentStatus.onHold;
      case 4:
        return PaymentStatus.failed;
      case 5:
        return PaymentStatus.refunded;
      case 6:
        return PaymentStatus.partiallyPaid;
      default:
        return PaymentStatus.pending;
    }
  }

  @override
  void write(BinaryWriter writer, PaymentStatus obj) {
    switch (obj) {
      case PaymentStatus.pending:
        writer.writeByte(0);
      case PaymentStatus.completed:
        writer.writeByte(1);
      case PaymentStatus.cancelled:
        writer.writeByte(2);
      case PaymentStatus.onHold:
        writer.writeByte(3);
      case PaymentStatus.failed:
        writer.writeByte(4);
      case PaymentStatus.refunded:
        writer.writeByte(5);
      case PaymentStatus.partiallyPaid:
        writer.writeByte(6);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DisposalReasonAdapter extends TypeAdapter<DisposalReason> {
  @override
  final typeId = 20;

  @override
  DisposalReason read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DisposalReason.damaged;
      case 1:
        return DisposalReason.stolen;
      case 2:
        return DisposalReason.expired;
      case 3:
        return DisposalReason.obsolete;
      case 4:
        return DisposalReason.sold;
      case 5:
        return DisposalReason.donated;
      case 6:
        return DisposalReason.scrapped;
      case 7:
        return DisposalReason.lost;
      case 8:
        return DisposalReason.regulatory;
      case 9:
        return DisposalReason.other;
      default:
        return DisposalReason.damaged;
    }
  }

  @override
  void write(BinaryWriter writer, DisposalReason obj) {
    switch (obj) {
      case DisposalReason.damaged:
        writer.writeByte(0);
      case DisposalReason.stolen:
        writer.writeByte(1);
      case DisposalReason.expired:
        writer.writeByte(2);
      case DisposalReason.obsolete:
        writer.writeByte(3);
      case DisposalReason.sold:
        writer.writeByte(4);
      case DisposalReason.donated:
        writer.writeByte(5);
      case DisposalReason.scrapped:
        writer.writeByte(6);
      case DisposalReason.lost:
        writer.writeByte(7);
      case DisposalReason.regulatory:
        writer.writeByte(8);
      case DisposalReason.other:
        writer.writeByte(9);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisposalReasonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TransactionTypeAdapter extends TypeAdapter<TransactionType> {
  @override
  final typeId = 21;

  @override
  TransactionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TransactionType.sale;
      case 1:
        return TransactionType.purchase;
      case 2:
        return TransactionType.rental;
      case 3:
        return TransactionType.swap;
      case 4:
        return TransactionType.disposal;
      default:
        return TransactionType.sale;
    }
  }

  @override
  void write(BinaryWriter writer, TransactionType obj) {
    switch (obj) {
      case TransactionType.sale:
        writer.writeByte(0);
      case TransactionType.purchase:
        writer.writeByte(1);
      case TransactionType.rental:
        writer.writeByte(2);
      case TransactionType.swap:
        writer.writeByte(3);
      case TransactionType.disposal:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccountStatusAdapter extends TypeAdapter<AccountStatus> {
  @override
  final typeId = 22;

  @override
  AccountStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AccountStatus.active;
      case 1:
        return AccountStatus.inactive;
      case 2:
        return AccountStatus.closed;
      case 3:
        return AccountStatus.frozen;
      case 4:
        return AccountStatus.delinquent;
      default:
        return AccountStatus.active;
    }
  }

  @override
  void write(BinaryWriter writer, AccountStatus obj) {
    switch (obj) {
      case AccountStatus.active:
        writer.writeByte(0);
      case AccountStatus.inactive:
        writer.writeByte(1);
      case AccountStatus.closed:
        writer.writeByte(2);
      case AccountStatus.frozen:
        writer.writeByte(3);
      case AccountStatus.delinquent:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrencyAdapter extends TypeAdapter<Currency> {
  @override
  final typeId = 23;

  @override
  Currency read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Currency.birr;
      case 1:
        return Currency.usd;
      case 2:
        return Currency.other;
      default:
        return Currency.birr;
    }
  }

  @override
  void write(BinaryWriter writer, Currency obj) {
    switch (obj) {
      case Currency.birr:
        writer.writeByte(0);
      case Currency.usd:
        writer.writeByte(1);
      case Currency.other:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AccountCategoryAdapter extends TypeAdapter<AccountCategory> {
  @override
  final typeId = 24;

  @override
  AccountCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AccountCategory.custom;
      case 1:
        return AccountCategory.cash;
      case 2:
        return AccountCategory.pettyCash;
      case 3:
        return AccountCategory.accountsReceivable;
      case 4:
        return AccountCategory.allowanceForDoubtfulAccounts;
      case 5:
        return AccountCategory.inventory;
      case 6:
        return AccountCategory.prepaidExpense;
      case 7:
        return AccountCategory.prepaidInsurance;
      case 8:
        return AccountCategory.investments;
      case 9:
        return AccountCategory.equipment;
      case 10:
        return AccountCategory.accumulatedDepreciation;
      case 11:
        return AccountCategory.buildings;
      case 12:
        return AccountCategory.land;
      case 13:
        return AccountCategory.intangibleAssets;
      case 14:
        return AccountCategory.assetDisposal;
      case 15:
        return AccountCategory.accountsPayable;
      case 16:
        return AccountCategory.accruedLiabilities;
      case 17:
        return AccountCategory.loansPayable;
      case 18:
        return AccountCategory.shortTermDebt;
      case 19:
        return AccountCategory.unearnedRevenue;
      case 20:
        return AccountCategory.payrollLiabilities;
      case 21:
        return AccountCategory.salesTaxPayable;
      case 22:
        return AccountCategory.incomeTaxPayable;
      case 23:
        return AccountCategory.taxesPayable;
      case 24:
        return AccountCategory.interestPayable;
      case 25:
        return AccountCategory.depositLiability;
      case 26:
        return AccountCategory.bondsPayable;
      case 27:
        return AccountCategory.ownerEquity;
      case 28:
        return AccountCategory.capitalStock;
      case 29:
        return AccountCategory.retainedEarnings;
      case 30:
        return AccountCategory.dividends;
      case 31:
        return AccountCategory.treasuryStock;
      case 32:
        return AccountCategory.salesRevenue;
      case 33:
        return AccountCategory.serviceRevenue;
      case 34:
        return AccountCategory.rentalIncome;
      case 35:
        return AccountCategory.rentIncome;
      case 36:
        return AccountCategory.interestIncome;
      case 37:
        return AccountCategory.generalRevenue;
      case 38:
        return AccountCategory.otherIncome;
      case 39:
        return AccountCategory.swapIncome;
      case 40:
        return AccountCategory.disposalGain;
      case 41:
        return AccountCategory.salesReturns;
      case 42:
        return AccountCategory.salesDiscounts;
      case 43:
        return AccountCategory.costOfGoodsSold;
      case 44:
        return AccountCategory.salaryExpense;
      case 45:
        return AccountCategory.rentExpense;
      case 46:
        return AccountCategory.utilitiesExpense;
      case 47:
        return AccountCategory.depreciationExpense;
      case 48:
        return AccountCategory.insuranceExpense;
      case 49:
        return AccountCategory.suppliesExpense;
      case 50:
        return AccountCategory.advertisingExpense;
      case 51:
        return AccountCategory.repairsAndMaintenance;
      case 52:
        return AccountCategory.shippingExpense;
      case 53:
        return AccountCategory.generalExpense;
      case 54:
        return AccountCategory.interestExpense;
      case 55:
        return AccountCategory.taxExpense;
      case 56:
        return AccountCategory.travelExpense;
      case 57:
        return AccountCategory.professionalFees;
      case 58:
        return AccountCategory.badDebtExpense;
      case 59:
        return AccountCategory.purchaseReturns;
      case 60:
        return AccountCategory.purchaseExpense;
      case 61:
        return AccountCategory.swapLoss;
      case 62:
        return AccountCategory.disposalExpense;
      case 63:
        return AccountCategory.salesReturnExpense;
      default:
        return AccountCategory.custom;
    }
  }

  @override
  void write(BinaryWriter writer, AccountCategory obj) {
    switch (obj) {
      case AccountCategory.custom:
        writer.writeByte(0);
      case AccountCategory.cash:
        writer.writeByte(1);
      case AccountCategory.pettyCash:
        writer.writeByte(2);
      case AccountCategory.accountsReceivable:
        writer.writeByte(3);
      case AccountCategory.allowanceForDoubtfulAccounts:
        writer.writeByte(4);
      case AccountCategory.inventory:
        writer.writeByte(5);
      case AccountCategory.prepaidExpense:
        writer.writeByte(6);
      case AccountCategory.prepaidInsurance:
        writer.writeByte(7);
      case AccountCategory.investments:
        writer.writeByte(8);
      case AccountCategory.equipment:
        writer.writeByte(9);
      case AccountCategory.accumulatedDepreciation:
        writer.writeByte(10);
      case AccountCategory.buildings:
        writer.writeByte(11);
      case AccountCategory.land:
        writer.writeByte(12);
      case AccountCategory.intangibleAssets:
        writer.writeByte(13);
      case AccountCategory.assetDisposal:
        writer.writeByte(14);
      case AccountCategory.accountsPayable:
        writer.writeByte(15);
      case AccountCategory.accruedLiabilities:
        writer.writeByte(16);
      case AccountCategory.loansPayable:
        writer.writeByte(17);
      case AccountCategory.shortTermDebt:
        writer.writeByte(18);
      case AccountCategory.unearnedRevenue:
        writer.writeByte(19);
      case AccountCategory.payrollLiabilities:
        writer.writeByte(20);
      case AccountCategory.salesTaxPayable:
        writer.writeByte(21);
      case AccountCategory.incomeTaxPayable:
        writer.writeByte(22);
      case AccountCategory.taxesPayable:
        writer.writeByte(23);
      case AccountCategory.interestPayable:
        writer.writeByte(24);
      case AccountCategory.depositLiability:
        writer.writeByte(25);
      case AccountCategory.bondsPayable:
        writer.writeByte(26);
      case AccountCategory.ownerEquity:
        writer.writeByte(27);
      case AccountCategory.capitalStock:
        writer.writeByte(28);
      case AccountCategory.retainedEarnings:
        writer.writeByte(29);
      case AccountCategory.dividends:
        writer.writeByte(30);
      case AccountCategory.treasuryStock:
        writer.writeByte(31);
      case AccountCategory.salesRevenue:
        writer.writeByte(32);
      case AccountCategory.serviceRevenue:
        writer.writeByte(33);
      case AccountCategory.rentalIncome:
        writer.writeByte(34);
      case AccountCategory.rentIncome:
        writer.writeByte(35);
      case AccountCategory.interestIncome:
        writer.writeByte(36);
      case AccountCategory.generalRevenue:
        writer.writeByte(37);
      case AccountCategory.otherIncome:
        writer.writeByte(38);
      case AccountCategory.swapIncome:
        writer.writeByte(39);
      case AccountCategory.disposalGain:
        writer.writeByte(40);
      case AccountCategory.salesReturns:
        writer.writeByte(41);
      case AccountCategory.salesDiscounts:
        writer.writeByte(42);
      case AccountCategory.costOfGoodsSold:
        writer.writeByte(43);
      case AccountCategory.salaryExpense:
        writer.writeByte(44);
      case AccountCategory.rentExpense:
        writer.writeByte(45);
      case AccountCategory.utilitiesExpense:
        writer.writeByte(46);
      case AccountCategory.depreciationExpense:
        writer.writeByte(47);
      case AccountCategory.insuranceExpense:
        writer.writeByte(48);
      case AccountCategory.suppliesExpense:
        writer.writeByte(49);
      case AccountCategory.advertisingExpense:
        writer.writeByte(50);
      case AccountCategory.repairsAndMaintenance:
        writer.writeByte(51);
      case AccountCategory.shippingExpense:
        writer.writeByte(52);
      case AccountCategory.generalExpense:
        writer.writeByte(53);
      case AccountCategory.interestExpense:
        writer.writeByte(54);
      case AccountCategory.taxExpense:
        writer.writeByte(55);
      case AccountCategory.travelExpense:
        writer.writeByte(56);
      case AccountCategory.professionalFees:
        writer.writeByte(57);
      case AccountCategory.badDebtExpense:
        writer.writeByte(58);
      case AccountCategory.purchaseReturns:
        writer.writeByte(59);
      case AccountCategory.purchaseExpense:
        writer.writeByte(60);
      case AccountCategory.swapLoss:
        writer.writeByte(61);
      case AccountCategory.disposalExpense:
        writer.writeByte(62);
      case AccountCategory.salesReturnExpense:
        writer.writeByte(63);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExpenseCategoryAdapter extends TypeAdapter<ExpenseCategory> {
  @override
  final typeId = 25;

  @override
  ExpenseCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ExpenseCategory.employeeExpense;
      case 1:
        return ExpenseCategory.guardExpense;
      case 2:
        return ExpenseCategory.houseRent;
      case 3:
        return ExpenseCategory.food;
      case 4:
        return ExpenseCategory.transportation;
      case 5:
        return ExpenseCategory.goodsTransport;
      case 6:
        return ExpenseCategory.festal;
      case 7:
        return ExpenseCategory.waste;
      case 8:
        return ExpenseCategory.packaging;
      case 9:
        return ExpenseCategory.commission;
      case 10:
        return ExpenseCategory.militia;
      case 11:
        return ExpenseCategory.warehouse;
      case 12:
        return ExpenseCategory.other;
      default:
        return ExpenseCategory.employeeExpense;
    }
  }

  @override
  void write(BinaryWriter writer, ExpenseCategory obj) {
    switch (obj) {
      case ExpenseCategory.employeeExpense:
        writer.writeByte(0);
      case ExpenseCategory.guardExpense:
        writer.writeByte(1);
      case ExpenseCategory.houseRent:
        writer.writeByte(2);
      case ExpenseCategory.food:
        writer.writeByte(3);
      case ExpenseCategory.transportation:
        writer.writeByte(4);
      case ExpenseCategory.goodsTransport:
        writer.writeByte(5);
      case ExpenseCategory.festal:
        writer.writeByte(6);
      case ExpenseCategory.waste:
        writer.writeByte(7);
      case ExpenseCategory.packaging:
        writer.writeByte(8);
      case ExpenseCategory.commission:
        writer.writeByte(9);
      case ExpenseCategory.militia:
        writer.writeByte(10);
      case ExpenseCategory.warehouse:
        writer.writeByte(11);
      case ExpenseCategory.other:
        writer.writeByte(12);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReportFormatAdapter extends TypeAdapter<ReportFormat> {
  @override
  final typeId = 26;

  @override
  ReportFormat read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReportFormat.pdf;
      case 1:
        return ReportFormat.excel;
      case 2:
        return ReportFormat.csv;
      case 3:
        return ReportFormat.html;
      case 4:
        return ReportFormat.json;
      default:
        return ReportFormat.pdf;
    }
  }

  @override
  void write(BinaryWriter writer, ReportFormat obj) {
    switch (obj) {
      case ReportFormat.pdf:
        writer.writeByte(0);
      case ReportFormat.excel:
        writer.writeByte(1);
      case ReportFormat.csv:
        writer.writeByte(2);
      case ReportFormat.html:
        writer.writeByte(3);
      case ReportFormat.json:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportFormatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReportPeriodAdapter extends TypeAdapter<ReportPeriod> {
  @override
  final typeId = 27;

  @override
  ReportPeriod read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReportPeriod.daily;
      case 1:
        return ReportPeriod.weekly;
      case 2:
        return ReportPeriod.monthly;
      case 3:
        return ReportPeriod.quarterly;
      case 4:
        return ReportPeriod.annually;
      default:
        return ReportPeriod.daily;
    }
  }

  @override
  void write(BinaryWriter writer, ReportPeriod obj) {
    switch (obj) {
      case ReportPeriod.daily:
        writer.writeByte(0);
      case ReportPeriod.weekly:
        writer.writeByte(1);
      case ReportPeriod.monthly:
        writer.writeByte(2);
      case ReportPeriod.quarterly:
        writer.writeByte(3);
      case ReportPeriod.annually:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportPeriodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReportStatusAdapter extends TypeAdapter<ReportStatus> {
  @override
  final typeId = 28;

  @override
  ReportStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReportStatus.draft;
      case 1:
        return ReportStatus.finalized;
      case 2:
        return ReportStatus.archived;
      case 3:
        return ReportStatus.deleted;
      default:
        return ReportStatus.draft;
    }
  }

  @override
  void write(BinaryWriter writer, ReportStatus obj) {
    switch (obj) {
      case ReportStatus.draft:
        writer.writeByte(0);
      case ReportStatus.finalized:
        writer.writeByte(1);
      case ReportStatus.archived:
        writer.writeByte(2);
      case ReportStatus.deleted:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReportCategoryAdapter extends TypeAdapter<ReportCategory> {
  @override
  final typeId = 29;

  @override
  ReportCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReportCategory.financial;
      case 1:
        return ReportCategory.operational;
      case 2:
        return ReportCategory.compliance;
      case 3:
        return ReportCategory.performance;
      case 4:
        return ReportCategory.custom;
      default:
        return ReportCategory.financial;
    }
  }

  @override
  void write(BinaryWriter writer, ReportCategory obj) {
    switch (obj) {
      case ReportCategory.financial:
        writer.writeByte(0);
      case ReportCategory.operational:
        writer.writeByte(1);
      case ReportCategory.compliance:
        writer.writeByte(2);
      case ReportCategory.performance:
        writer.writeByte(3);
      case ReportCategory.custom:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DisposalSortFieldAdapter extends TypeAdapter<DisposalSortField> {
  @override
  final typeId = 30;

  @override
  DisposalSortField read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DisposalSortField.disposalDate;
      case 1:
        return DisposalSortField.itemName;
      case 2:
        return DisposalSortField.totalOriginalItemCost;
      case 3:
        return DisposalSortField.reason;
      case 4:
        return DisposalSortField.createdAt;
      case 5:
        return DisposalSortField.updatedAt;
      default:
        return DisposalSortField.disposalDate;
    }
  }

  @override
  void write(BinaryWriter writer, DisposalSortField obj) {
    switch (obj) {
      case DisposalSortField.disposalDate:
        writer.writeByte(0);
      case DisposalSortField.itemName:
        writer.writeByte(1);
      case DisposalSortField.totalOriginalItemCost:
        writer.writeByte(2);
      case DisposalSortField.reason:
        writer.writeByte(3);
      case DisposalSortField.createdAt:
        writer.writeByte(4);
      case DisposalSortField.updatedAt:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisposalSortFieldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SortOrderAdapter extends TypeAdapter<SortOrder> {
  @override
  final typeId = 31;

  @override
  SortOrder read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SortOrder.ascending;
      case 1:
        return SortOrder.descending;
      default:
        return SortOrder.ascending;
    }
  }

  @override
  void write(BinaryWriter writer, SortOrder obj) {
    switch (obj) {
      case SortOrder.ascending:
        writer.writeByte(0);
      case SortOrder.descending:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SwapSortFieldAdapter extends TypeAdapter<SwapSortField> {
  @override
  final typeId = 32;

  @override
  SwapSortField read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SwapSortField.swapDate;
      case 1:
        return SwapSortField.customerName;
      case 2:
        return SwapSortField.priceDifference;
      case 3:
        return SwapSortField.createdAt;
      default:
        return SwapSortField.swapDate;
    }
  }

  @override
  void write(BinaryWriter writer, SwapSortField obj) {
    switch (obj) {
      case SwapSortField.swapDate:
        writer.writeByte(0);
      case SwapSortField.customerName:
        writer.writeByte(1);
      case SwapSortField.priceDifference:
        writer.writeByte(2);
      case SwapSortField.createdAt:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwapSortFieldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RentalSortFieldAdapter extends TypeAdapter<RentalSortField> {
  @override
  final typeId = 33;

  @override
  RentalSortField read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RentalSortField.startDate;
      case 1:
        return RentalSortField.endDate;
      case 2:
        return RentalSortField.rentalFee;
      case 3:
        return RentalSortField.customerId;
      case 4:
        return RentalSortField.createdAt;
      case 5:
        return RentalSortField.updatedAt;
      default:
        return RentalSortField.startDate;
    }
  }

  @override
  void write(BinaryWriter writer, RentalSortField obj) {
    switch (obj) {
      case RentalSortField.startDate:
        writer.writeByte(0);
      case RentalSortField.endDate:
        writer.writeByte(1);
      case RentalSortField.rentalFee:
        writer.writeByte(2);
      case RentalSortField.customerId:
        writer.writeByte(3);
      case RentalSortField.createdAt:
        writer.writeByte(4);
      case RentalSortField.updatedAt:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RentalSortFieldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemConditionAdapter extends TypeAdapter<ItemCondition> {
  @override
  final typeId = 34;

  @override
  ItemCondition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemCondition.newCondition;
      case 1:
        return ItemCondition.used;
      case 2:
        return ItemCondition.refurbished;
      case 3:
        return ItemCondition.defective;
      case 4:
        return ItemCondition.other;
      default:
        return ItemCondition.newCondition;
    }
  }

  @override
  void write(BinaryWriter writer, ItemCondition obj) {
    switch (obj) {
      case ItemCondition.newCondition:
        writer.writeByte(0);
      case ItemCondition.used:
        writer.writeByte(1);
      case ItemCondition.refurbished:
        writer.writeByte(2);
      case ItemCondition.defective:
        writer.writeByte(3);
      case ItemCondition.other:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemConditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DisposalMethodAdapter extends TypeAdapter<DisposalMethod> {
  @override
  final typeId = 35;

  @override
  DisposalMethod read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DisposalMethod.recycled;
      case 1:
        return DisposalMethod.destroyed;
      case 2:
        return DisposalMethod.donated;
      case 3:
        return DisposalMethod.soldForScrap;
      case 4:
        return DisposalMethod.other;
      default:
        return DisposalMethod.recycled;
    }
  }

  @override
  void write(BinaryWriter writer, DisposalMethod obj) {
    switch (obj) {
      case DisposalMethod.recycled:
        writer.writeByte(0);
      case DisposalMethod.destroyed:
        writer.writeByte(1);
      case DisposalMethod.donated:
        writer.writeByte(2);
      case DisposalMethod.soldForScrap:
        writer.writeByte(3);
      case DisposalMethod.other:
        writer.writeByte(4);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisposalMethodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SwapReasonAdapter extends TypeAdapter<SwapReason> {
  @override
  final typeId = 36;

  @override
  SwapReason read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SwapReason.size;
      case 1:
        return SwapReason.color;
      case 2:
        return SwapReason.brand;
      case 3:
        return SwapReason.other;
      default:
        return SwapReason.size;
    }
  }

  @override
  void write(BinaryWriter writer, SwapReason obj) {
    switch (obj) {
      case SwapReason.size:
        writer.writeByte(0);
      case SwapReason.color:
        writer.writeByte(1);
      case SwapReason.brand:
        writer.writeByte(2);
      case SwapReason.other:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwapReasonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

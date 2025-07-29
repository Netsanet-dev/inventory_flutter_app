// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get amharic => 'Amharic';

  @override
  String get date => 'Date';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get ownerName => 'Owner Name';

  @override
  String get shopName => 'Shop Name';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get notSet => 'Not Set';

  @override
  String get gallery => 'Gallery';

  @override
  String get assets => 'Assets';

  @override
  String get selectLogoSource => 'Select Logo Source';

  @override
  String get reconciliationThreshold => 'Reconciliation Threshold';

  @override
  String get inventoryAlertLevel => 'Inventory Alert Level';

  @override
  String get taxRate => 'Tax Rate';

  @override
  String get logo => 'Logo';

  @override
  String get anaSafetyShop => 'Ana Safety Shop';

  @override
  String get initialSetupMessage =>
      'Please provide your name and shop details to continue.';

  @override
  String get enterOwnerName => 'Enter your name';

  @override
  String get enterShopName => 'Enter shop name';

  @override
  String get success => 'Success';

  @override
  String get error => 'Error';

  @override
  String get setupCompleted => 'Setup completed';

  @override
  String get failedToSaveSetup => 'Failed to save setup';

  @override
  String get ownerNameAndShopName => 'Owner Name and Shop Name are required';

  @override
  String enterField(Object field) {
    return 'Enter $field';
  }

  @override
  String get ownerNameUpdated => 'Owner name updated';

  @override
  String get failedToUpdateOwnerName => 'Failed to update owner name';

  @override
  String get ownerNameCannotBeEmpty => 'Owner name cannot be empty';

  @override
  String get shopNameUpdated => 'Shop name updated';

  @override
  String get failedToUpdateShopName => 'Failed to update shop name';

  @override
  String get shopNameCannotBeEmpty => 'Shop name cannot be empty';

  @override
  String get reconciliationThresholdUpdated =>
      'Reconciliation threshold updated';

  @override
  String get failedToUpdateThreshold => 'Failed to update threshold';

  @override
  String get thresholdMustBePositive => 'Threshold must be a positive number';

  @override
  String get inventoryAlertLevelUpdated => 'Inventory alert level updated';

  @override
  String get failedToUpdateAlertLevel => 'Failed to update alert level';

  @override
  String get alertLevelMustBeNonNegative => 'Alert level must be non-negative';

  @override
  String get taxRateUpdated => 'Tax rate updated';

  @override
  String get failedToUpdateTaxRate => 'Failed to update tax';

  @override
  String get taxRateMustBeNonNegative => 'Tax rate must be non-negative';

  @override
  String get logoUpdatedFromGallery => 'Logo updated from gallery';

  @override
  String get logoUpdatedFromAssets => 'Logo updated from assets';

  @override
  String get failedToUpdateLogo => 'Failed to update logo';

  @override
  String get theme => 'Theme';

  @override
  String get invalid => 'Invalid';

  @override
  String get ownerNameAndShopNameRequired =>
      'Owner and Shop names are required';

  @override
  String get accounts_overview => 'Accounts Overview';

  @override
  String get accounts => 'Accounts';

  @override
  String get reports => 'Reports';

  @override
  String get refresh_accounts => 'Refresh Accounts';

  @override
  String get create_account => 'Create Account';

  @override
  String get search_accounts => 'Search Accounts';

  @override
  String get no_accounts_found => 'No accounts match your search';

  @override
  String get retry => 'Retry';

  @override
  String get balance_sheet => 'Balance Sheet';

  @override
  String get income_statement => 'Income Statement';

  @override
  String get cash_flow => 'Cash Flow';

  @override
  String get category_summary => 'Category Summary';

  @override
  String get type_summary => 'Type Summary';

  @override
  String get trial_balance => 'Trial Balance';

  @override
  String get liabilities => 'Liabilities';

  @override
  String get equity => 'Equity';

  @override
  String get revenue => 'Revenue';

  @override
  String get expenses => 'Expenses';

  @override
  String get net_income => 'Net Income';

  @override
  String get operating => 'Operating';

  @override
  String get investing => 'Investing';

  @override
  String get financing => 'Financing';

  @override
  String get net_change => 'Net Change';

  @override
  String get account_name => 'Account Name';

  @override
  String get account_type => 'Account Type';

  @override
  String get account_category => 'Account Category';

  @override
  String get balance => 'Balance';

  @override
  String get chart_number => 'Chart Number';

  @override
  String get id => 'ID';

  @override
  String get active => 'Active';

  @override
  String get notes => 'Notes';

  @override
  String get notes_optional => 'Notes (Optional)';

  @override
  String get chart => 'Chart';

  @override
  String get type => 'Type';

  @override
  String get category => 'Category';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get edit => 'Edit';

  @override
  String get deactivate => 'Deactivate';

  @override
  String get create => 'Create';

  @override
  String get close => 'Close';

  @override
  String get name_required => 'Name is required';

  @override
  String get type_required => 'Please select an account type';

  @override
  String get category_required => 'Please select an account category';

  @override
  String get balance_required => 'Balance is required';

  @override
  String get invalid_number => 'Enter a valid number';

  @override
  String get error_title => 'Error';

  @override
  String get success_title => 'Success';

  @override
  String get error_empty_name => 'Account name cannot be empty';

  @override
  String get error_empty_id => 'Account ID cannot be empty';

  @override
  String error_create_account(Object error) {
    return 'Failed to create account: $error';
  }

  @override
  String error_fetch_accounts(Object error) {
    return 'Failed to fetch accounts: $error';
  }

  @override
  String error_filter_accounts(Object error) {
    return 'Failed to filter accounts: $error';
  }

  @override
  String error_update_reports(Object error) {
    return 'Failed to update financial reports: $error';
  }

  @override
  String error_fetch_account(Object error) {
    return 'Failed to fetch account: $error';
  }

  @override
  String error_fetch_account_by_name(Object error) {
    return 'Failed to fetch account by name: $error';
  }

  @override
  String error_update_account(Object error) {
    return 'Failed to update account: $error';
  }

  @override
  String error_deactivate_account(Object error) {
    return 'Failed to deactivate account: $error';
  }

  @override
  String get created_via_ui => 'Created via UI';

  @override
  String success_account_created(Object name) {
    return 'Account $name created successfully';
  }

  @override
  String success_account_updated(Object name) {
    return 'Account $name updated successfully';
  }

  @override
  String success_account_deactivated(Object id) {
    return 'Account $id deactivated successfully';
  }

  @override
  String get edit_account => 'Edit Account';

  @override
  String get snapshots => 'Snapshots';

  @override
  String get purchases_tab => 'Purchases';

  @override
  String error_fetching_purchases(Object error) {
    return 'Failed to fetch purchases: $error';
  }

  @override
  String get no_purchases_found => 'No purchases found';

  @override
  String get cash => 'Cash';

  @override
  String get credit => 'Credit';

  @override
  String purchase_from(Object name) {
    return 'Purchase from $name';
  }

  @override
  String get total_amount => 'Total Amount';

  @override
  String get payment_method => 'Payment Method';

  @override
  String get items => 'Items';

  @override
  String get quantity => 'Quantity';

  @override
  String get unit_cost => 'Unit Cost';

  @override
  String error_fetching_snapshots(Object error) {
    return 'Failed to fetch snapshots: $error';
  }

  @override
  String get no_snapshots_found => 'No snapshots found';

  @override
  String get snapshot_date => 'Snapshot Date';

  @override
  String get total_balance => 'Total Balance';

  @override
  String get addCategory => 'Add Category';

  @override
  String get editCategory => 'Edit Category';

  @override
  String get tapToPickImage => 'Tap to Pick Image';

  @override
  String get group => 'Group';

  @override
  String get subgroupOptional => 'Subgroup (Optional)';

  @override
  String get subgroup2Optional => 'Subgroup 2 (Optional)';

  @override
  String get priority => 'Priority';

  @override
  String get enterValidNumber => 'Enter a valid number';

  @override
  String get deleteCategoryConfirmation =>
      'Are you sure you want to delete this category?';

  @override
  String get delete => 'Delete';

  @override
  String get stockCategories => 'Stock Categories';

  @override
  String get search => 'Search';

  @override
  String get noCategoriesFound => 'No categories found';

  @override
  String get statusUpdated => 'Status Updated';

  @override
  String get categoryAdded => 'Category added';

  @override
  String get categoryUpdated => 'Category updated';

  @override
  String get previous => 'Previous';

  @override
  String get next => 'Next';

  @override
  String get page => 'Page';

  @override
  String get all => 'All';

  @override
  String get inactive => 'Inactive';

  @override
  String get category_true => 'Category activated';

  @override
  String get category_false => 'Category deactivated';

  @override
  String get no_expenses => 'No expenses found';

  @override
  String get confirm_delete => 'Confirm Delete';

  @override
  String delete_expense(Object category) {
    return 'Delete expense \'$category\'?';
  }

  @override
  String amount(Object value) {
    return 'Amount: \$$value';
  }

  @override
  String payment(Object method) {
    return 'Payment: $method';
  }

  @override
  String expense_date(Object value) {
    return 'Date: $value';
  }

  @override
  String get edit_expense => 'Edit Expense';

  @override
  String get add_expense => 'Add Expense';

  @override
  String get required => 'Required';

  @override
  String get must_be_positive => 'Must be positive';

  @override
  String get select_date => 'Select date';

  @override
  String get show_additional_fields => 'Show Additional Fields';

  @override
  String get tax => 'Tax';

  @override
  String get must_be_non_negative => 'Must be non-negative';

  @override
  String get vendor => 'Vendor';

  @override
  String get image_receipt_url => 'Image Receipt URL';

  @override
  String get receipt_id => 'Receipt ID';

  @override
  String get is_prepaid => 'Is Prepaid';

  @override
  String get from_inventory => 'From Inventory';

  @override
  String get update => 'Update';

  @override
  String get add => 'Add';

  @override
  String get date_required => 'Please select a date';

  @override
  String get add_purchase => 'Add Purchase';

  @override
  String get edit_purchase => 'Edit Purchase';

  @override
  String get category_shoes => 'Shoes';

  @override
  String get subcategory_safety_shoes => 'Safety Shoes';

  @override
  String get subcategory_keskes => 'keskes';

  @override
  String get subcategory_boots => 'Boots';

  @override
  String get subcategory_work_shoes => 'Work Shoes';

  @override
  String get subcategory_womens_shoes => 'Women\'s Shoes';

  @override
  String get subcategory_local_shoes => 'Local Shoes';

  @override
  String get brand_with_extra => 'with extra';

  @override
  String get brand_lion => 'Lion';

  @override
  String get brand_black_nile => 'Black Nile';

  @override
  String get brand_ramsey => 'Ramsey';

  @override
  String get brand_can => 'Can';

  @override
  String get brand_peacock => 'Peacock';

  @override
  String get brand_sheba => 'Sheba';

  @override
  String get brand_jogger => 'Jogger';

  @override
  String get brand_rock_lander => 'Rock Lander';

  @override
  String get brand_every_safe => 'Every Safe';

  @override
  String get brand_cat => 'Cat';

  @override
  String get brand_heckel => 'Heckel';

  @override
  String get brand_global => 'Global';

  @override
  String get brand_patterned => 'Patterned';

  @override
  String get brand_ranger => 'Ranger';

  @override
  String get brand_delta => 'Delta';

  @override
  String get brand_spiked => 'Spiked';

  @override
  String get brand_dalcha_timber => 'Dalcha Timber';

  @override
  String get brand_swat_timber => 'Swat Timber';

  @override
  String get brand_kangaroo => 'Kangaroo';

  @override
  String get brand_salam => 'Salam';

  @override
  String get brand_abajifar => 'Abajifar';

  @override
  String get brand_safety => 'Safety';

  @override
  String get brand_work => 'Work';

  @override
  String get category_tuta => 'Tuta';

  @override
  String get subcategory_safety_tuta => 'Safety Tuta';

  @override
  String get brand_coat => 'Coat';

  @override
  String get brand_pants => 'Pants';

  @override
  String get brand_full => 'Full';

  @override
  String get brand_airline => 'Airline';

  @override
  String get subcategory_khaki => 'Khaki';

  @override
  String get brand_dalcha => 'Dalcha';

  @override
  String get subcategory_printed => 'Printed';

  @override
  String get brand_khaki => 'Khaki';

  @override
  String get brand_tetran => 'Tetran';

  @override
  String get brand_crocs => 'Crocs';

  @override
  String get subcategory_teteran => 'Teteran';

  @override
  String get brand_teteran => 'Teteran';

  @override
  String get subcategory_manchini => 'Manchini';

  @override
  String get brand_manchini => 'Manchini';

  @override
  String get subcategory_ventilated => 'Ventilated';

  @override
  String get brand_ventilated => 'Ventilated';

  @override
  String get category_gown => 'Gown';

  @override
  String get subcategory_hospitality_gown => 'Hospitality Gown';

  @override
  String get brand_hospitality_gown => 'Hospitality Gown';

  @override
  String get category_gloves => 'Gloves';

  @override
  String get subcategory_leather_gloves => 'Leather Gloves';

  @override
  String get brand_leather_gloves => 'Leather Gloves';

  @override
  String get subcategory_laser_gloves => 'Laser Gloves';

  @override
  String get brand_laser_gloves => 'Laser Gloves';

  @override
  String get subcategory_knitted_gloves => 'Knitted Gloves';

  @override
  String get brand_knitted_gloves => 'Knitted Gloves';

  @override
  String get subcategory_plastic_gloves => 'Plastic Gloves';

  @override
  String get brand_plastic_gloves => 'Plastic Gloves';

  @override
  String get category_coat => 'Coat';

  @override
  String get subcategory_wool_coat => 'Wool Coat';

  @override
  String get brand_wool_coat => 'Wool Coat';

  @override
  String get subcategory_fabric_coat => 'Fabric Coat';

  @override
  String get brand_fabric_coat => 'Fabric Coat';

  @override
  String get subcategory_local_coat => 'Local Coat';

  @override
  String get brand_local_coat => 'Local Coat';

  @override
  String get category_reflective => 'Reflective';

  @override
  String get subcategory_imported => 'Imported';

  @override
  String get brand_imported => 'Imported';

  @override
  String get subcategory_local => 'Local';

  @override
  String get brand_local => 'Local';

  @override
  String get category_rainwear => 'Rainwear';

  @override
  String get subcategory_coat_and_pants => 'Coat and Pants';

  @override
  String get brand_coat_and_pants => 'Coat and Pants';

  @override
  String get subcategory_full_rainwear => 'Full Rainwear';

  @override
  String get brand_full_rainwear => 'Full Rainwear';

  @override
  String get subcategory_thin_rainwear => 'Thin Rainwear';

  @override
  String get brand_thin_rainwear => 'Thin Rainwear';

  @override
  String get category_coat_and_pants => 'Coat and Pants';

  @override
  String get subcategory_reflective => 'Reflective';

  @override
  String get brand_reflective => 'Reflective';

  @override
  String get subcategory_match => 'Match';

  @override
  String get brand_match => 'Match';

  @override
  String get subcategory_shirt_and_pants => 'Shirt and Pants';

  @override
  String get brand_shirt_and_pants => 'Shirt and Pants';

  @override
  String get category_wallet => 'Wallet';

  @override
  String get subcategory_deep => 'Deep';

  @override
  String get brand_deep => 'Deep';

  @override
  String get subcategory_front_and_back => 'Front and Back';

  @override
  String get brand_front_and_back => 'Front and Back';

  @override
  String get subcategory_with_coin_pocket => 'With Coin Pocket';

  @override
  String get brand_with_coin_pocket => 'With Coin Pocket';

  @override
  String get category_cap => 'Cap';

  @override
  String get subcategory_kitchen_cap => 'Kitchen Cap';

  @override
  String get brand_with_net => 'With Net';

  @override
  String get brand_without_net => 'Without Net';

  @override
  String get brand_chef_cap => 'Chef Cap';

  @override
  String get subcategory_hat => 'Hat';

  @override
  String get brand_selene => 'Selene';

  @override
  String get brand_fabric => 'Fabric';

  @override
  String get subcategory_helmet => 'Helmet';

  @override
  String get brand_helmet => 'Helmet';

  @override
  String get subcategory_normal_cap => 'Normal Cap';

  @override
  String get brand_normal_cap => 'Normal Cap';

  @override
  String get category_shirt => 'Shirt';

  @override
  String get subcategory_shirt => 'Shirt';

  @override
  String get brand_white => 'White';

  @override
  String get brand_black => 'Black';

  @override
  String get brand_blue => 'Blue';

  @override
  String get category_mask => 'Mask';

  @override
  String get subcategory_chemical_mask => 'Chemical Mask';

  @override
  String get brand_chemical_mask => 'Chemical Mask';

  @override
  String get subcategory_surgical_mask => 'Surgical Mask';

  @override
  String get brand_surgical_mask => 'Surgical Mask';

  @override
  String get subcategory_normal_mask => 'Normal Mask';

  @override
  String get brand_normal_mask => 'Normal Mask';

  @override
  String get category_jacket => 'Jacket';

  @override
  String get subcategory_safety_jacket => 'Safety Jacket';

  @override
  String get brand_safety_jacket => 'Safety Jacket';

  @override
  String get subcategory_reflective_jacket => 'Reflective Jacket';

  @override
  String get brand_reflective_jacket => 'Reflective Jacket';

  @override
  String get subcategory_normal_jacket => 'Normal Jacket';

  @override
  String get brand_normal_jacket => 'Normal Jacket';

  @override
  String get category_belt => 'Belt';

  @override
  String get subcategory_leather_belt => 'Leather Belt';

  @override
  String get brand_leather_belt => 'Leather Belt';

  @override
  String get subcategory_canvas_belt => 'Canvas Belt';

  @override
  String get brand_canvas_belt => 'Canvas Belt';

  @override
  String get category_socks => 'Socks';

  @override
  String get subcategory_long_socks => 'Long Socks';

  @override
  String get brand_long_socks => 'Long Socks';

  @override
  String get subcategory_short_socks => 'Short Socks';

  @override
  String get brand_short_socks => 'Short Socks';

  @override
  String get category_glasses => 'Glasses';

  @override
  String get subcategory_welding_glasses => 'Welding Glasses';

  @override
  String get brand_welding_glasses => 'Welding Glasses';

  @override
  String get subcategory_dust_glasses => 'Dust Glasses';

  @override
  String get brand_dust_glasses => 'Dust Glasses';

  @override
  String get subcategory_sunglasses => 'Sunglasses';

  @override
  String get brand_sunglasses => 'Sunglasses';

  @override
  String get itemColorRed => 'Red';

  @override
  String get itemColorBlue => 'Blue';

  @override
  String get itemColorYellow => 'Yellow';

  @override
  String get itemColorBlack => 'Black';

  @override
  String get itemColorWhite => 'White';

  @override
  String get itemColorGreen => 'Green';

  @override
  String get itemColorOrange => 'Orange';

  @override
  String get itemColorBrown => 'Brown';

  @override
  String get itemColorGrey => 'Grey';

  @override
  String get itemColorPink => 'Pink';

  @override
  String get itemColorPurple => 'Purple';

  @override
  String get itemColorSilver => 'Silver';

  @override
  String get itemColorGold => 'Gold';

  @override
  String get itemColorKaki => 'Khaki';

  @override
  String get itemColorOther => 'Other';

  @override
  String get paymentWithCash => 'Cash';

  @override
  String get paymentWithCheck => 'Check book';

  @override
  String get creditNoPayment => 'Credit';

  @override
  String get paymentInKind => 'barter';

  @override
  String get paymentWithBankTransfer => 'Bank Transfer';

  @override
  String get purchase_items => 'Purchase Items';

  @override
  String get filter_items => 'Filter Items';

  @override
  String get filters => 'Filters';

  @override
  String get subcategory => 'Subcategory';

  @override
  String get subcategory2 => 'Subcategory 2';

  @override
  String get color => 'Color';

  @override
  String get size => 'Size';

  @override
  String get shoe_size => 'Shoes Size';

  @override
  String get low_stock => 'Low Stock';

  @override
  String get none => 'None';

  @override
  String get done => 'Done';

  @override
  String get no_items_found => 'No items found.';

  @override
  String get sales_items => 'Sales Items';

  @override
  String get unit => 'Unit';

  @override
  String get product_name => 'Product Name';

  @override
  String get profitable_items => 'Profitable Items';

  @override
  String get unknown => 'Unknown';

  @override
  String get purchases => 'Purchases';

  @override
  String get purchase_date => 'Purchase Date';

  @override
  String get show_additional_purchase_fields =>
      'Show Additional Purchase Fields';

  @override
  String get invoice_number => 'Invoice Number';

  @override
  String get vendor_name => 'Vendor Name';

  @override
  String get buy_tax => 'Buy Tax';

  @override
  String get paid_amount => 'Paid Amount';

  @override
  String get cancel_add_item => 'Cancel Add Item';

  @override
  String get add_item => 'Add Item';

  @override
  String get cancel_add_expense => 'Cancel Add Expense';

  @override
  String get no_items => 'No items added';

  @override
  String get min_stock => 'Minimum Stock';

  @override
  String get discount => 'Discount';

  @override
  String get item_tax => 'Item Tax';

  @override
  String get stock_location => 'Stock Location';

  @override
  String get stock_ref => 'Stock Reference';

  @override
  String get image_receipt => 'Image Receipt';

  @override
  String get payment_method_required => 'Payment Method is required';

  @override
  String get quantity_required => 'Valid quantity required';

  @override
  String get unit_cost_required => 'Valid unit cost required';

  @override
  String get color_required => 'Color is required';

  @override
  String get shoe_size_required => 'Valid shoe size required';

  @override
  String get size_required => 'Size is required';

  @override
  String get amount_required => 'Valid amount required';

  @override
  String get invalid_tax => 'Tax cannot be negative';

  @override
  String get invalid_discount => 'Discount cannot be negative';

  @override
  String get invalid_min_stock => 'Minimum stock cannot be negative';

  @override
  String get invalid_amount => 'Amount cannot be negative';

  @override
  String get please_fill => 'Please fill';

  @override
  String get birr => 'ETB';

  @override
  String get group_name_required => 'Group name is required';

  @override
  String get priority_invalid => 'Priority must be a valid number';

  @override
  String get invalid_category_id => 'Invalid category ID for update';

  @override
  String failed_save_category(Object error) {
    return 'Failed to save category: $error';
  }

  @override
  String get date_future_invalid => 'Date cannot be in the future';

  @override
  String get failed_update_expenses => 'Failed to update expenses date';

  @override
  String failed_add_item(Object error) {
    return 'Failed to add item: $error';
  }

  @override
  String get unit_cost_positive => 'Unit cost must be positive';

  @override
  String get discount_positive => 'Discount must be positive';

  @override
  String get item_tax_positive => 'Item tax must be positive';

  @override
  String get item_not_found => 'Item not found';

  @override
  String failed_update_item(Object error) {
    return 'Failed to update item: $error';
  }

  @override
  String failed_remove_item(Object error) {
    return 'Failed to remove item: $error';
  }

  @override
  String get sale => 'Sale';

  @override
  String get amount_positive => 'Amount must be positive';

  @override
  String get payment_method_not_none => 'Payment method cannot be none';

  @override
  String get tax_negative => 'Tax cannot be negative';

  @override
  String failed_add_expense(Object error) {
    return 'Failed to add expense: $error';
  }

  @override
  String get expense_not_found => 'Expense not found';

  @override
  String get form_validation_failed => 'Form validation failed';

  @override
  String get purchase_item_required => 'At least one purchase item is required';

  @override
  String get purchase_payment_method_required =>
      'Purchase payment method is required';

  @override
  String get purchase_date_before_2000 =>
      'Purchase date must be after the year 2000';

  @override
  String get buy_tax_negative => 'Buy tax cannot be negative';

  @override
  String get paid_amount_negative => 'Paid amount cannot be negative';

  @override
  String failed_save_purchase(Object error) {
    return 'Failed to save purchase: $error';
  }

  @override
  String get purchase_saved_success => 'Purchase saved successfully';

  @override
  String get low_stock_alerts => 'Low Stock Alerts';

  @override
  String get quick_actions => 'Quick Actions';

  @override
  String get owner => 'Owner';

  @override
  String welcome_owner(Object ownerName) {
    return 'Welcome, $ownerName';
  }

  @override
  String get monitor_inventory => 'Monitor your inventory and finances';

  @override
  String get inventory => 'Inventory';

  @override
  String get etb => 'ETB';

  @override
  String get sales_trend => 'Sales Trend';

  @override
  String get swap => 'Swap';

  @override
  String get disposal => 'Disposal';

  @override
  String get name => 'Name';

  @override
  String get no_low_stock => 'No low stock items';

  @override
  String get stock => 'Stock';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get shopAddress => 'Shop Address';

  @override
  String get tinNumber => 'TIN Number';

  @override
  String get reset => 'Reset';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get selectTheme => 'Select Theme';

  @override
  String get selectCurrency => 'Select Currency';

  @override
  String get ownerNameEmpty => 'Owner name cannot be empty';

  @override
  String get shopNameEmpty => 'Shop name cannot be empty';

  @override
  String get phoneNumberInvalid =>
      'Phone number must be at least 10 characters';

  @override
  String get tinNumberInvalid => 'TIN number must be at least 8 characters';

  @override
  String get thresholdNegative =>
      'Reconciliation Threshold must be non-negative';

  @override
  String get inventoryNegative => 'Inventory Alert Level must be non-negative';

  @override
  String get taxRateNegative => 'Tax rate must be non-negative';

  @override
  String get newField => 'New Field';

  @override
  String get newFieldInvalid => 'New field must be at least 5 characters';

  @override
  String get add_sale => 'Add Sales';

  @override
  String get edit_sale => 'Edit Sales';

  @override
  String get total_quantity => 'Total Quantity';

  @override
  String get total_expense => 'Total Expense';

  @override
  String get confirm_delete_expense =>
      'Are you sure you want to delete an expense?';

  @override
  String get confirm_delete_sales =>
      'Are you sure you want to delete this sales?';

  @override
  String get confirm_delete_purchases =>
      'Are you sure you want to delete this purchase?';

  @override
  String get employeeExpense => 'Employee Expense';

  @override
  String get guardExpense => 'Guard Expense';

  @override
  String get houseRent => 'House Rent';

  @override
  String get food => 'Food Expense';

  @override
  String get transportation => 'Transportation Expense';

  @override
  String get goodsTransport => 'Goods Transport Expense';

  @override
  String get festal => 'Plastic packaging Expense';

  @override
  String get waste => 'Waste Expense';

  @override
  String get packaging => 'Packaging Expense';

  @override
  String get commission => 'Commission Expense';

  @override
  String get militia => 'Militia Expense';

  @override
  String get warehouse => 'Warehouse Expense';

  @override
  String get other => 'Other';

  @override
  String get current_amount => 'Price Amount';

  @override
  String get tap_to_pick_image => 'Tap to pick image';

  @override
  String get take_photo => 'Take Photo';

  @override
  String get choose_from_gallery => 'Choose from gallery';

  @override
  String get swapReasonColor => 'Color Swap';

  @override
  String get swapReasonSize => 'Size Swap';

  @override
  String get swapReasonBrand => 'Brand Swap';

  @override
  String get itemConditionNew => 'New';

  @override
  String get itemConditionUsed => 'Used';

  @override
  String get itemConditionRefurbished => 'Refurbished';

  @override
  String get itemConditionDefective => 'Defective';

  @override
  String get purchase => 'ግዢ';

  @override
  String get sales => 'ሽያጭ';

  @override
  String get analytics => 'ሪፖርት';

  @override
  String get finance => 'ፋይናንስ';

  @override
  String get expense => 'ወጪ';

  @override
  String get setting => 'ቅንብር';

  @override
  String get rentalDetails => 'Rental Details';

  @override
  String get startDate => 'Start Date';

  @override
  String get startDateRequired => 'Start Date is required';

  @override
  String get endDate => 'End Date';

  @override
  String get endDateRequired => 'End Date is required';

  @override
  String get searchPurchasedItems => 'Search Purchased Items';

  @override
  String get selectPurchaseItem => 'Please select a purchase item';

  @override
  String get customerId => 'Customer ID';

  @override
  String get customerIdRequired => 'Customer ID is required';

  @override
  String get rentalFee => 'Rental Fee';

  @override
  String get rentalFeeRequired => 'Rental Fee is required';

  @override
  String get validRentalFee => 'Please enter a valid rental fee';

  @override
  String get rentQuantity => 'Rent Quantity';

  @override
  String get rentQuantityRequired => 'Rent Quantity is required';

  @override
  String get validQuantity => 'Please enter a valid quantity';

  @override
  String get deposit => 'Deposit';

  @override
  String get depositRequired => 'Deposit is required';

  @override
  String get validDeposit => 'Please enter a valid deposit';

  @override
  String get rentalStatus => 'Rental Status';

  @override
  String get rentalStatusRequired => 'Rental Status is required';

  @override
  String get showAdditionalFields => 'Show Additional Fields';

  @override
  String get itemSKU => 'Item SKU';

  @override
  String get imagePath => 'Image Path';

  @override
  String get addRental => 'Add Rental';

  @override
  String get editRental => 'Edit Rental';

  @override
  String get cost => 'Cost';

  @override
  String get disposalDetails => 'Disposal Details';

  @override
  String get disposalDate => 'Disposal Date';

  @override
  String get disposalDateRequired => 'Disposal Date is required';

  @override
  String get quantityRequired => 'Quantity is required';

  @override
  String get disposalReason => 'Disposal Reason';

  @override
  String get disposalReasonRequired => 'Disposal Reason is required';

  @override
  String get disposalMethod => 'Disposal Method';

  @override
  String get disposalMethodRequired => 'Disposal Method is required';

  @override
  String get originalItemCost => 'Original Item Cost';

  @override
  String get originalItemCostRequired => 'Original Item Cost is required';

  @override
  String get validOriginalItemCost => 'Please enter a valid original item cost';

  @override
  String get stockLocation => 'Stock Location';

  @override
  String get expenseDescription => 'Expense Description';

  @override
  String get expenseId => 'Expense ID';

  @override
  String get disposalExpenseAmount => 'Disposal Expense Amount';

  @override
  String get validDisposalExpenseAmount =>
      'Please enter a valid disposal expense amount';

  @override
  String get processedByStaffId => 'Processed By Staff ID';

  @override
  String get addDisposal => 'Add Disposal';

  @override
  String get editDisposal => 'Edit Disposal';

  @override
  String get inventoryApp => 'Inventory App';
}

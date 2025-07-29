import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('en'),
  ];

  /// Title for the settings menu
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Label for language selection
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Name of the English language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Name of the Amharic language
  ///
  /// In en, this message translates to:
  /// **'Amharic'**
  String get amharic;

  /// Lable for date
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// Label for the dashboard screen
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// Label for the owner's name field
  ///
  /// In en, this message translates to:
  /// **'Owner Name'**
  String get ownerName;

  /// Label for the shop's name field
  ///
  /// In en, this message translates to:
  /// **'Shop Name'**
  String get shopName;

  /// Label for the save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Label for the cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Text shown when a field is not configured
  ///
  /// In en, this message translates to:
  /// **'Not Set'**
  String get notSet;

  /// Option to select logo from gallery
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// Option to select logo from assets
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get assets;

  /// Title for logo source selection dialog
  ///
  /// In en, this message translates to:
  /// **'Select Logo Source'**
  String get selectLogoSource;

  /// Label for reconciliation threshold setting
  ///
  /// In en, this message translates to:
  /// **'Reconciliation Threshold'**
  String get reconciliationThreshold;

  /// Label for inventory alert level setting
  ///
  /// In en, this message translates to:
  /// **'Inventory Alert Level'**
  String get inventoryAlertLevel;

  /// Label for tax rate setting
  ///
  /// In en, this message translates to:
  /// **'Tax Rate'**
  String get taxRate;

  /// Label for logo setting
  ///
  /// In en, this message translates to:
  /// **'Logo'**
  String get logo;

  /// Default app title when shop name is not set
  ///
  /// In en, this message translates to:
  /// **'Ana Safety Shop'**
  String get anaSafetyShop;

  /// Message shown in the initial setup dialog
  ///
  /// In en, this message translates to:
  /// **'Please provide your name and shop details to continue.'**
  String get initialSetupMessage;

  /// Hint text for owner name field
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterOwnerName;

  /// Hint text for shop name field
  ///
  /// In en, this message translates to:
  /// **'Enter shop name'**
  String get enterShopName;

  /// Title for success snackbar
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Title for error snackbar
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Message for successful setup completion
  ///
  /// In en, this message translates to:
  /// **'Setup completed'**
  String get setupCompleted;

  /// Error message for setup failure
  ///
  /// In en, this message translates to:
  /// **'Failed to save setup'**
  String get failedToSaveSetup;

  /// Error message for empty owner name or shop name
  ///
  /// In en, this message translates to:
  /// **'Owner Name and Shop Name are required'**
  String get ownerNameAndShopName;

  /// Hint text for input field
  ///
  /// In en, this message translates to:
  /// **'Enter {field}'**
  String enterField(Object field);

  /// Message for successful owner name update
  ///
  /// In en, this message translates to:
  /// **'Owner name updated'**
  String get ownerNameUpdated;

  /// Error message for failed owner name update
  ///
  /// In en, this message translates to:
  /// **'Failed to update owner name'**
  String get failedToUpdateOwnerName;

  /// Error message for empty owner name
  ///
  /// In en, this message translates to:
  /// **'Owner name cannot be empty'**
  String get ownerNameCannotBeEmpty;

  /// Success message for successful shop name update
  ///
  /// In en, this message translates to:
  /// **'Shop name updated'**
  String get shopNameUpdated;

  /// Error message for shop name update failure
  ///
  /// In en, this message translates to:
  /// **'Failed to update shop name'**
  String get failedToUpdateShopName;

  /// Error message for empty shop name
  ///
  /// In en, this message translates to:
  /// **'Shop name cannot be empty'**
  String get shopNameCannotBeEmpty;

  /// Success message for successful threshold update
  ///
  /// In en, this message translates to:
  /// **'Reconciliation threshold updated'**
  String get reconciliationThresholdUpdated;

  /// Error message for threshold update failure
  ///
  /// In en, this message translates to:
  /// **'Failed to update threshold'**
  String get failedToUpdateThreshold;

  /// Error message for invalid threshold
  ///
  /// In en, this message translates to:
  /// **'Threshold must be a positive number'**
  String get thresholdMustBePositive;

  /// Success message for successful alert level update
  ///
  /// In en, this message translates to:
  /// **'Inventory alert level updated'**
  String get inventoryAlertLevelUpdated;

  /// Error message for alert level update failure
  ///
  /// In en, this message translates to:
  /// **'Failed to update alert level'**
  String get failedToUpdateAlertLevel;

  /// Error message for invalid alert level
  ///
  /// In en, this message translates to:
  /// **'Alert level must be non-negative'**
  String get alertLevelMustBeNonNegative;

  /// Success message for tax
  ///
  /// In en, this message translates to:
  /// **'Tax rate updated'**
  String get taxRateUpdated;

  /// Error message for tax
  ///
  /// In en, this message translates to:
  /// **'Failed to update tax'**
  String get failedToUpdateTaxRate;

  /// Error message for invalid tax rate
  ///
  /// In en, this message translates to:
  /// **'Tax rate must be non-negative'**
  String get taxRateMustBeNonNegative;

  /// Success message for successful logo update from gallery
  ///
  /// In en, this message translates to:
  /// **'Logo updated from gallery'**
  String get logoUpdatedFromGallery;

  /// Success message for successful logo update from assets
  ///
  /// In en, this message translates to:
  /// **'Logo updated from assets'**
  String get logoUpdatedFromAssets;

  /// Error message for logo update failure
  ///
  /// In en, this message translates to:
  /// **'Failed to update logo'**
  String get failedToUpdateLogo;

  /// Label for theme setting
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Message for invalid
  ///
  /// In en, this message translates to:
  /// **'Invalid'**
  String get invalid;

  /// Message for owner and shop name validation
  ///
  /// In en, this message translates to:
  /// **'Owner and Shop names are required'**
  String get ownerNameAndShopNameRequired;

  /// Title for the accounts overview screen
  ///
  /// In en, this message translates to:
  /// **'Accounts Overview'**
  String get accounts_overview;

  /// Label for the accounts tab
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// Label for the reports tab
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// Tooltip for the refresh accounts button
  ///
  /// In en, this message translates to:
  /// **'Refresh Accounts'**
  String get refresh_accounts;

  /// Label for the create account action
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get create_account;

  /// Label for the search accounts input
  ///
  /// In en, this message translates to:
  /// **'Search Accounts'**
  String get search_accounts;

  /// Message when no accounts are found
  ///
  /// In en, this message translates to:
  /// **'No accounts match your search'**
  String get no_accounts_found;

  /// Label for the retry button
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Title for the balance sheet report
  ///
  /// In en, this message translates to:
  /// **'Balance Sheet'**
  String get balance_sheet;

  /// Title for the income statement report
  ///
  /// In en, this message translates to:
  /// **'Income Statement'**
  String get income_statement;

  /// Title for the cash flow report
  ///
  /// In en, this message translates to:
  /// **'Cash Flow'**
  String get cash_flow;

  /// Title for the category summary report
  ///
  /// In en, this message translates to:
  /// **'Category Summary'**
  String get category_summary;

  /// Title for the type summary report
  ///
  /// In en, this message translates to:
  /// **'Type Summary'**
  String get type_summary;

  /// Title for the trial balance report
  ///
  /// In en, this message translates to:
  /// **'Trial Balance'**
  String get trial_balance;

  /// Label for liabilities in reports
  ///
  /// In en, this message translates to:
  /// **'Liabilities'**
  String get liabilities;

  /// Label for equity in reports
  ///
  /// In en, this message translates to:
  /// **'Equity'**
  String get equity;

  /// Label for revenue in reports
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get revenue;

  /// Label for expenses in reports
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get expenses;

  /// Label for net income in reports
  ///
  /// In en, this message translates to:
  /// **'Net Income'**
  String get net_income;

  /// Label for operating cash flow
  ///
  /// In en, this message translates to:
  /// **'Operating'**
  String get operating;

  /// Label for investing cash flow
  ///
  /// In en, this message translates to:
  /// **'Investing'**
  String get investing;

  /// Label for financing cash flow
  ///
  /// In en, this message translates to:
  /// **'Financing'**
  String get financing;

  /// Label for net change in cash flow
  ///
  /// In en, this message translates to:
  /// **'Net Change'**
  String get net_change;

  /// Label for account name input
  ///
  /// In en, this message translates to:
  /// **'Account Name'**
  String get account_name;

  /// Label for account type input
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get account_type;

  /// Label for account category input
  ///
  /// In en, this message translates to:
  /// **'Account Category'**
  String get account_category;

  /// Label for account balance
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// Label for chart number
  ///
  /// In en, this message translates to:
  /// **'Chart Number'**
  String get chart_number;

  /// Label for account ID
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// Label for active status
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// Label for notes
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// Label for optional notes input
  ///
  /// In en, this message translates to:
  /// **'Notes (Optional)'**
  String get notes_optional;

  /// Label for chart number in account details
  ///
  /// In en, this message translates to:
  /// **'Chart'**
  String get chart;

  /// Label for account type in details
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// Label for account category in details
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// Label for active status yes
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// Label for active status no
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// Label for edit action
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Label for deactivate action
  ///
  /// In en, this message translates to:
  /// **'Deactivate'**
  String get deactivate;

  /// Label for create action
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// Label for close action
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Validation error for empty name
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get name_required;

  /// Validation error for missing account type
  ///
  /// In en, this message translates to:
  /// **'Please select an account type'**
  String get type_required;

  /// Validation error for missing account category
  ///
  /// In en, this message translates to:
  /// **'Please select an account category'**
  String get category_required;

  /// Validation error for missing balance
  ///
  /// In en, this message translates to:
  /// **'Balance is required'**
  String get balance_required;

  /// Validation error for invalid number
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number'**
  String get invalid_number;

  /// Title for error messages
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error_title;

  /// Title for success messages
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success_title;

  /// Error message for empty account name
  ///
  /// In en, this message translates to:
  /// **'Account name cannot be empty'**
  String get error_empty_name;

  /// Error message for empty account ID
  ///
  /// In en, this message translates to:
  /// **'Account ID cannot be empty'**
  String get error_empty_id;

  /// Error message for failed account creation
  ///
  /// In en, this message translates to:
  /// **'Failed to create account: {error}'**
  String error_create_account(Object error);

  /// Error message for failed account fetch
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch accounts: {error}'**
  String error_fetch_accounts(Object error);

  /// Error message for failed account filtering
  ///
  /// In en, this message translates to:
  /// **'Failed to filter accounts: {error}'**
  String error_filter_accounts(Object error);

  /// Error message for failed report update
  ///
  /// In en, this message translates to:
  /// **'Failed to update financial reports: {error}'**
  String error_update_reports(Object error);

  /// Error message for failed account fetch
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch account: {error}'**
  String error_fetch_account(Object error);

  /// Error message for failed account fetch by name
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch account by name: {error}'**
  String error_fetch_account_by_name(Object error);

  /// Error message for failed account update
  ///
  /// In en, this message translates to:
  /// **'Failed to update account: {error}'**
  String error_update_account(Object error);

  /// Error message for failed account deactivation
  ///
  /// In en, this message translates to:
  /// **'Failed to deactivate account: {error}'**
  String error_deactivate_account(Object error);

  /// Note for accounts created via UI
  ///
  /// In en, this message translates to:
  /// **'Created via UI'**
  String get created_via_ui;

  /// Success message for account creation
  ///
  /// In en, this message translates to:
  /// **'Account {name} created successfully'**
  String success_account_created(Object name);

  /// Success message for account update
  ///
  /// In en, this message translates to:
  /// **'Account {name} updated successfully'**
  String success_account_updated(Object name);

  /// Success message for account deactivation
  ///
  /// In en, this message translates to:
  /// **'Account {id} deactivated successfully'**
  String success_account_deactivated(Object id);

  /// message for editing account
  ///
  /// In en, this message translates to:
  /// **'Edit Account'**
  String get edit_account;

  /// Label for snapshots tab
  ///
  /// In en, this message translates to:
  /// **'Snapshots'**
  String get snapshots;

  /// Label for the purchases tab
  ///
  /// In en, this message translates to:
  /// **'Purchases'**
  String get purchases_tab;

  /// Error message for failed purchase fetch
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch purchases: {error}'**
  String error_fetching_purchases(Object error);

  /// Message when no purchases are found
  ///
  /// In en, this message translates to:
  /// **'No purchases found'**
  String get no_purchases_found;

  /// Label for cash payment method
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// Label for credit payment method
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get credit;

  /// Label for purchase vendor name
  ///
  /// In en, this message translates to:
  /// **'Purchase from {name}'**
  String purchase_from(Object name);

  /// Label for total purchase amount
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// Label for payment method
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// Label for items in purchase
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// Label for item quantity
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// Label for item unit cost
  ///
  /// In en, this message translates to:
  /// **'Unit Cost'**
  String get unit_cost;

  /// Error message for failed snapshot fetch
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch snapshots: {error}'**
  String error_fetching_snapshots(Object error);

  /// Message when no snapshots are found
  ///
  /// In en, this message translates to:
  /// **'No snapshots found'**
  String get no_snapshots_found;

  /// Label for snapshot date
  ///
  /// In en, this message translates to:
  /// **'Snapshot Date'**
  String get snapshot_date;

  /// Label for total balance in snapshot
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get total_balance;

  /// Label for adding a new category
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// Label for editing an existing category
  ///
  /// In en, this message translates to:
  /// **'Edit Category'**
  String get editCategory;

  /// Prompt for selecting an image
  ///
  /// In en, this message translates to:
  /// **'Tap to Pick Image'**
  String get tapToPickImage;

  /// Label for category group
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// Label for optional subgroup
  ///
  /// In en, this message translates to:
  /// **'Subgroup (Optional)'**
  String get subgroupOptional;

  /// Label for optional second subgroup
  ///
  /// In en, this message translates to:
  /// **'Subgroup 2 (Optional)'**
  String get subgroup2Optional;

  /// Label for category priority
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get priority;

  /// Error message for invalid number input
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number'**
  String get enterValidNumber;

  /// Message for delete confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this category?'**
  String get deleteCategoryConfirmation;

  /// Label for delete action
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Title for stock categories screen
  ///
  /// In en, this message translates to:
  /// **'Stock Categories'**
  String get stockCategories;

  /// Label for search input
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Message when no categories are available
  ///
  /// In en, this message translates to:
  /// **'No categories found'**
  String get noCategoriesFound;

  /// Message for status update confirmation
  ///
  /// In en, this message translates to:
  /// **'Status Updated'**
  String get statusUpdated;

  /// Message for successful category addition
  ///
  /// In en, this message translates to:
  /// **'Category added'**
  String get categoryAdded;

  /// Message for successful category update
  ///
  /// In en, this message translates to:
  /// **'Category updated'**
  String get categoryUpdated;

  /// Label for previous page button
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// Label for next page button
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Label for page number
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// Label for all status filter
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Label for inactive status filter
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// Message for activated category
  ///
  /// In en, this message translates to:
  /// **'Category activated'**
  String get category_true;

  /// Message for deactivated category
  ///
  /// In en, this message translates to:
  /// **'Category deactivated'**
  String get category_false;

  /// Message when no expenses are found
  ///
  /// In en, this message translates to:
  /// **'No expenses found'**
  String get no_expenses;

  /// Title for delete confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirm_delete;

  /// Message for delete confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Delete expense \'{category}\'?'**
  String delete_expense(Object category);

  /// Label for expense amount
  ///
  /// In en, this message translates to:
  /// **'Amount: \${value}'**
  String amount(Object value);

  /// Label for payment method
  ///
  /// In en, this message translates to:
  /// **'Payment: {method}'**
  String payment(Object method);

  /// Label for expense date
  ///
  /// In en, this message translates to:
  /// **'Date: {value}'**
  String expense_date(Object value);

  /// Title for edit expense form
  ///
  /// In en, this message translates to:
  /// **'Edit Expense'**
  String get edit_expense;

  /// Title for add expense form
  ///
  /// In en, this message translates to:
  /// **'Add Expense'**
  String get add_expense;

  /// Error message for required field
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// Error message for non-positive amount
  ///
  /// In en, this message translates to:
  /// **'Must be positive'**
  String get must_be_positive;

  /// Placeholder for date field
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get select_date;

  /// Label for additional fields toggle
  ///
  /// In en, this message translates to:
  /// **'Show Additional Fields'**
  String get show_additional_fields;

  /// Label for tax field
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// Error message for negative tax
  ///
  /// In en, this message translates to:
  /// **'Must be non-negative'**
  String get must_be_non_negative;

  /// Label for vendor field
  ///
  /// In en, this message translates to:
  /// **'Vendor'**
  String get vendor;

  /// Label for image receipt URL field
  ///
  /// In en, this message translates to:
  /// **'Image Receipt URL'**
  String get image_receipt_url;

  /// Label for receipt ID field
  ///
  /// In en, this message translates to:
  /// **'Receipt ID'**
  String get receipt_id;

  /// Label for prepaid checkbox
  ///
  /// In en, this message translates to:
  /// **'Is Prepaid'**
  String get is_prepaid;

  /// Label for from inventory checkbox
  ///
  /// In en, this message translates to:
  /// **'From Inventory'**
  String get from_inventory;

  /// Label for update button
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// Label for add button
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Error message for missing date
  ///
  /// In en, this message translates to:
  /// **'Please select a date'**
  String get date_required;

  /// Default purchase form title
  ///
  /// In en, this message translates to:
  /// **'Add Purchase'**
  String get add_purchase;

  /// Default purchase form title
  ///
  /// In en, this message translates to:
  /// **'Edit Purchase'**
  String get edit_purchase;

  /// Category label for Shoes
  ///
  /// In en, this message translates to:
  /// **'Shoes'**
  String get category_shoes;

  /// Subcategory label for Safety Shoes
  ///
  /// In en, this message translates to:
  /// **'Safety Shoes'**
  String get subcategory_safety_shoes;

  /// Subcategory label for Keskes
  ///
  /// In en, this message translates to:
  /// **'keskes'**
  String get subcategory_keskes;

  /// Subcategory label for Boots
  ///
  /// In en, this message translates to:
  /// **'Boots'**
  String get subcategory_boots;

  /// Subcategory label for Work Shoes
  ///
  /// In en, this message translates to:
  /// **'Work Shoes'**
  String get subcategory_work_shoes;

  /// Subcategory label for Women's Shoes
  ///
  /// In en, this message translates to:
  /// **'Women\'s Shoes'**
  String get subcategory_womens_shoes;

  /// Subcategory label for Local Shoes
  ///
  /// In en, this message translates to:
  /// **'Local Shoes'**
  String get subcategory_local_shoes;

  /// Brand label for Keskes
  ///
  /// In en, this message translates to:
  /// **'with extra'**
  String get brand_with_extra;

  /// Brand label for Lion
  ///
  /// In en, this message translates to:
  /// **'Lion'**
  String get brand_lion;

  /// Brand label for Black Nile
  ///
  /// In en, this message translates to:
  /// **'Black Nile'**
  String get brand_black_nile;

  /// Brand label for Ramsey
  ///
  /// In en, this message translates to:
  /// **'Ramsey'**
  String get brand_ramsey;

  /// Brand label for Can
  ///
  /// In en, this message translates to:
  /// **'Can'**
  String get brand_can;

  /// Brand label for Peacock
  ///
  /// In en, this message translates to:
  /// **'Peacock'**
  String get brand_peacock;

  /// Brand label for Sheba
  ///
  /// In en, this message translates to:
  /// **'Sheba'**
  String get brand_sheba;

  /// Brand label for Jogger
  ///
  /// In en, this message translates to:
  /// **'Jogger'**
  String get brand_jogger;

  /// Brand label for Rock Lander
  ///
  /// In en, this message translates to:
  /// **'Rock Lander'**
  String get brand_rock_lander;

  /// Brand label for Every Safe
  ///
  /// In en, this message translates to:
  /// **'Every Safe'**
  String get brand_every_safe;

  /// Brand label for Cat
  ///
  /// In en, this message translates to:
  /// **'Cat'**
  String get brand_cat;

  /// Brand label for Heckel
  ///
  /// In en, this message translates to:
  /// **'Heckel'**
  String get brand_heckel;

  /// Brand label for Global
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get brand_global;

  /// Brand label for Patterned
  ///
  /// In en, this message translates to:
  /// **'Patterned'**
  String get brand_patterned;

  /// Brand label for Ranger
  ///
  /// In en, this message translates to:
  /// **'Ranger'**
  String get brand_ranger;

  /// Brand label for Delta
  ///
  /// In en, this message translates to:
  /// **'Delta'**
  String get brand_delta;

  /// Brand label for Spiked
  ///
  /// In en, this message translates to:
  /// **'Spiked'**
  String get brand_spiked;

  /// Brand label for Dalcha Timber
  ///
  /// In en, this message translates to:
  /// **'Dalcha Timber'**
  String get brand_dalcha_timber;

  /// Brand label for Swat Timber
  ///
  /// In en, this message translates to:
  /// **'Swat Timber'**
  String get brand_swat_timber;

  /// Brand label for Kangaroo
  ///
  /// In en, this message translates to:
  /// **'Kangaroo'**
  String get brand_kangaroo;

  /// Brand label for Salam
  ///
  /// In en, this message translates to:
  /// **'Salam'**
  String get brand_salam;

  /// Brand label for Abajifar
  ///
  /// In en, this message translates to:
  /// **'Abajifar'**
  String get brand_abajifar;

  /// Brand label for Safety
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get brand_safety;

  /// Brand label for Work
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get brand_work;

  /// Category label for Tuta
  ///
  /// In en, this message translates to:
  /// **'Tuta'**
  String get category_tuta;

  /// Subcategory label for Safety Tuta
  ///
  /// In en, this message translates to:
  /// **'Safety Tuta'**
  String get subcategory_safety_tuta;

  /// Brand label for Coat
  ///
  /// In en, this message translates to:
  /// **'Coat'**
  String get brand_coat;

  /// Brand label for Pants
  ///
  /// In en, this message translates to:
  /// **'Pants'**
  String get brand_pants;

  /// Brand label for Full
  ///
  /// In en, this message translates to:
  /// **'Full'**
  String get brand_full;

  /// Brand label for Airline
  ///
  /// In en, this message translates to:
  /// **'Airline'**
  String get brand_airline;

  /// Subcategory label for Khaki
  ///
  /// In en, this message translates to:
  /// **'Khaki'**
  String get subcategory_khaki;

  /// Brand label for Dalcha
  ///
  /// In en, this message translates to:
  /// **'Dalcha'**
  String get brand_dalcha;

  /// Subcategory label for Printed
  ///
  /// In en, this message translates to:
  /// **'Printed'**
  String get subcategory_printed;

  /// Brand label for Khaki
  ///
  /// In en, this message translates to:
  /// **'Khaki'**
  String get brand_khaki;

  /// Brand label for Tetran
  ///
  /// In en, this message translates to:
  /// **'Tetran'**
  String get brand_tetran;

  /// Brand label for Crocs
  ///
  /// In en, this message translates to:
  /// **'Crocs'**
  String get brand_crocs;

  /// Subcategory label for Teteran
  ///
  /// In en, this message translates to:
  /// **'Teteran'**
  String get subcategory_teteran;

  /// Brand label for Teteran
  ///
  /// In en, this message translates to:
  /// **'Teteran'**
  String get brand_teteran;

  /// Subcategory label for Manchini
  ///
  /// In en, this message translates to:
  /// **'Manchini'**
  String get subcategory_manchini;

  /// Brand label for Manchini
  ///
  /// In en, this message translates to:
  /// **'Manchini'**
  String get brand_manchini;

  /// Subcategory label for Ventilated
  ///
  /// In en, this message translates to:
  /// **'Ventilated'**
  String get subcategory_ventilated;

  /// Brand label for Ventilated
  ///
  /// In en, this message translates to:
  /// **'Ventilated'**
  String get brand_ventilated;

  /// Category label for Gown
  ///
  /// In en, this message translates to:
  /// **'Gown'**
  String get category_gown;

  /// Subcategory label for Hospitality Gown
  ///
  /// In en, this message translates to:
  /// **'Hospitality Gown'**
  String get subcategory_hospitality_gown;

  /// Brand label for Hospitality Gown
  ///
  /// In en, this message translates to:
  /// **'Hospitality Gown'**
  String get brand_hospitality_gown;

  /// Category label for Gloves
  ///
  /// In en, this message translates to:
  /// **'Gloves'**
  String get category_gloves;

  /// Subcategory label for Leather Gloves
  ///
  /// In en, this message translates to:
  /// **'Leather Gloves'**
  String get subcategory_leather_gloves;

  /// Brand label for Leather Gloves
  ///
  /// In en, this message translates to:
  /// **'Leather Gloves'**
  String get brand_leather_gloves;

  /// Subcategory label for Laser Gloves
  ///
  /// In en, this message translates to:
  /// **'Laser Gloves'**
  String get subcategory_laser_gloves;

  /// Brand label for Laser Gloves
  ///
  /// In en, this message translates to:
  /// **'Laser Gloves'**
  String get brand_laser_gloves;

  /// Subcategory label for Knitted Gloves
  ///
  /// In en, this message translates to:
  /// **'Knitted Gloves'**
  String get subcategory_knitted_gloves;

  /// Brand label for Knitted Gloves
  ///
  /// In en, this message translates to:
  /// **'Knitted Gloves'**
  String get brand_knitted_gloves;

  /// Subcategory label for Plastic Gloves
  ///
  /// In en, this message translates to:
  /// **'Plastic Gloves'**
  String get subcategory_plastic_gloves;

  /// Brand label for Plastic Gloves
  ///
  /// In en, this message translates to:
  /// **'Plastic Gloves'**
  String get brand_plastic_gloves;

  /// Category label for Coat
  ///
  /// In en, this message translates to:
  /// **'Coat'**
  String get category_coat;

  /// Subcategory label for Wool Coat
  ///
  /// In en, this message translates to:
  /// **'Wool Coat'**
  String get subcategory_wool_coat;

  /// Brand label for Wool Coat
  ///
  /// In en, this message translates to:
  /// **'Wool Coat'**
  String get brand_wool_coat;

  /// Subcategory label for Fabric Coat
  ///
  /// In en, this message translates to:
  /// **'Fabric Coat'**
  String get subcategory_fabric_coat;

  /// Brand label for Fabric Coat
  ///
  /// In en, this message translates to:
  /// **'Fabric Coat'**
  String get brand_fabric_coat;

  /// Subcategory label for Local Coat
  ///
  /// In en, this message translates to:
  /// **'Local Coat'**
  String get subcategory_local_coat;

  /// Brand label for Local Coat
  ///
  /// In en, this message translates to:
  /// **'Local Coat'**
  String get brand_local_coat;

  /// Category label for Reflective
  ///
  /// In en, this message translates to:
  /// **'Reflective'**
  String get category_reflective;

  /// Subcategory label for Imported
  ///
  /// In en, this message translates to:
  /// **'Imported'**
  String get subcategory_imported;

  /// Brand label for Imported
  ///
  /// In en, this message translates to:
  /// **'Imported'**
  String get brand_imported;

  /// Subcategory label for Local
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get subcategory_local;

  /// Brand label for Local
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get brand_local;

  /// Category label for Rainwear
  ///
  /// In en, this message translates to:
  /// **'Rainwear'**
  String get category_rainwear;

  /// Subcategory label for Coat and Pants
  ///
  /// In en, this message translates to:
  /// **'Coat and Pants'**
  String get subcategory_coat_and_pants;

  /// Brand label for Coat and Pants
  ///
  /// In en, this message translates to:
  /// **'Coat and Pants'**
  String get brand_coat_and_pants;

  /// Subcategory label for Full Rainwear
  ///
  /// In en, this message translates to:
  /// **'Full Rainwear'**
  String get subcategory_full_rainwear;

  /// Brand label for Full Rainwear
  ///
  /// In en, this message translates to:
  /// **'Full Rainwear'**
  String get brand_full_rainwear;

  /// Subcategory label for Thin Rainwear
  ///
  /// In en, this message translates to:
  /// **'Thin Rainwear'**
  String get subcategory_thin_rainwear;

  /// Brand label for Thin Rainwear
  ///
  /// In en, this message translates to:
  /// **'Thin Rainwear'**
  String get brand_thin_rainwear;

  /// Category label for Coat and Pants
  ///
  /// In en, this message translates to:
  /// **'Coat and Pants'**
  String get category_coat_and_pants;

  /// Subcategory label for Reflective
  ///
  /// In en, this message translates to:
  /// **'Reflective'**
  String get subcategory_reflective;

  /// Brand label for Reflective
  ///
  /// In en, this message translates to:
  /// **'Reflective'**
  String get brand_reflective;

  /// Subcategory label for Match
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get subcategory_match;

  /// Brand label for Match
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get brand_match;

  /// Subcategory label for Shirt and Pants
  ///
  /// In en, this message translates to:
  /// **'Shirt and Pants'**
  String get subcategory_shirt_and_pants;

  /// Brand label for Shirt and Pants
  ///
  /// In en, this message translates to:
  /// **'Shirt and Pants'**
  String get brand_shirt_and_pants;

  /// Category label for Wallet
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get category_wallet;

  /// Subcategory label for Deep
  ///
  /// In en, this message translates to:
  /// **'Deep'**
  String get subcategory_deep;

  /// Brand label for Deep
  ///
  /// In en, this message translates to:
  /// **'Deep'**
  String get brand_deep;

  /// Subcategory label for Front and Back
  ///
  /// In en, this message translates to:
  /// **'Front and Back'**
  String get subcategory_front_and_back;

  /// Brand label for Front and Back
  ///
  /// In en, this message translates to:
  /// **'Front and Back'**
  String get brand_front_and_back;

  /// Subcategory label for With Coin Pocket
  ///
  /// In en, this message translates to:
  /// **'With Coin Pocket'**
  String get subcategory_with_coin_pocket;

  /// Brand label for With Coin Pocket
  ///
  /// In en, this message translates to:
  /// **'With Coin Pocket'**
  String get brand_with_coin_pocket;

  /// Category label for Cap
  ///
  /// In en, this message translates to:
  /// **'Cap'**
  String get category_cap;

  /// Subcategory label for Kitchen Cap
  ///
  /// In en, this message translates to:
  /// **'Kitchen Cap'**
  String get subcategory_kitchen_cap;

  /// Brand label for With Net
  ///
  /// In en, this message translates to:
  /// **'With Net'**
  String get brand_with_net;

  /// Brand label for Without Net
  ///
  /// In en, this message translates to:
  /// **'Without Net'**
  String get brand_without_net;

  /// Brand label for Chef Cap
  ///
  /// In en, this message translates to:
  /// **'Chef Cap'**
  String get brand_chef_cap;

  /// Subcategory label for Hat
  ///
  /// In en, this message translates to:
  /// **'Hat'**
  String get subcategory_hat;

  /// Brand label for Selene
  ///
  /// In en, this message translates to:
  /// **'Selene'**
  String get brand_selene;

  /// Brand label for Fabric
  ///
  /// In en, this message translates to:
  /// **'Fabric'**
  String get brand_fabric;

  /// Subcategory label for Helmet
  ///
  /// In en, this message translates to:
  /// **'Helmet'**
  String get subcategory_helmet;

  /// Brand label for Helmet
  ///
  /// In en, this message translates to:
  /// **'Helmet'**
  String get brand_helmet;

  /// Subcategory label for Normal Cap
  ///
  /// In en, this message translates to:
  /// **'Normal Cap'**
  String get subcategory_normal_cap;

  /// Brand label for Normal Cap
  ///
  /// In en, this message translates to:
  /// **'Normal Cap'**
  String get brand_normal_cap;

  /// Category label for Shirt
  ///
  /// In en, this message translates to:
  /// **'Shirt'**
  String get category_shirt;

  /// Subcategory label for Shirt
  ///
  /// In en, this message translates to:
  /// **'Shirt'**
  String get subcategory_shirt;

  /// Brand label for White
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get brand_white;

  /// Brand label for Black
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get brand_black;

  /// Brand label for Blue
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get brand_blue;

  /// Category label for Mask
  ///
  /// In en, this message translates to:
  /// **'Mask'**
  String get category_mask;

  /// Subcategory label for Chemical Mask
  ///
  /// In en, this message translates to:
  /// **'Chemical Mask'**
  String get subcategory_chemical_mask;

  /// Brand label for Chemical Mask
  ///
  /// In en, this message translates to:
  /// **'Chemical Mask'**
  String get brand_chemical_mask;

  /// Subcategory label for Surgical Mask
  ///
  /// In en, this message translates to:
  /// **'Surgical Mask'**
  String get subcategory_surgical_mask;

  /// Brand label for Surgical Mask
  ///
  /// In en, this message translates to:
  /// **'Surgical Mask'**
  String get brand_surgical_mask;

  /// Subcategory label for Normal Mask
  ///
  /// In en, this message translates to:
  /// **'Normal Mask'**
  String get subcategory_normal_mask;

  /// Brand label for Normal Mask
  ///
  /// In en, this message translates to:
  /// **'Normal Mask'**
  String get brand_normal_mask;

  /// Category label for Jacket
  ///
  /// In en, this message translates to:
  /// **'Jacket'**
  String get category_jacket;

  /// Subcategory label for Safety Jacket
  ///
  /// In en, this message translates to:
  /// **'Safety Jacket'**
  String get subcategory_safety_jacket;

  /// Brand label for Safety Jacket
  ///
  /// In en, this message translates to:
  /// **'Safety Jacket'**
  String get brand_safety_jacket;

  /// Subcategory label for Reflective Jacket
  ///
  /// In en, this message translates to:
  /// **'Reflective Jacket'**
  String get subcategory_reflective_jacket;

  /// Brand label for Reflective Jacket
  ///
  /// In en, this message translates to:
  /// **'Reflective Jacket'**
  String get brand_reflective_jacket;

  /// Subcategory label for Normal Jacket
  ///
  /// In en, this message translates to:
  /// **'Normal Jacket'**
  String get subcategory_normal_jacket;

  /// Brand label for Normal Jacket
  ///
  /// In en, this message translates to:
  /// **'Normal Jacket'**
  String get brand_normal_jacket;

  /// Category label for Belt
  ///
  /// In en, this message translates to:
  /// **'Belt'**
  String get category_belt;

  /// Subcategory label for Leather Belt
  ///
  /// In en, this message translates to:
  /// **'Leather Belt'**
  String get subcategory_leather_belt;

  /// Brand label for Leather Belt
  ///
  /// In en, this message translates to:
  /// **'Leather Belt'**
  String get brand_leather_belt;

  /// Subcategory label for Canvas Belt
  ///
  /// In en, this message translates to:
  /// **'Canvas Belt'**
  String get subcategory_canvas_belt;

  /// Brand label for Canvas Belt
  ///
  /// In en, this message translates to:
  /// **'Canvas Belt'**
  String get brand_canvas_belt;

  /// Category label for Socks
  ///
  /// In en, this message translates to:
  /// **'Socks'**
  String get category_socks;

  /// Subcategory label for Long Socks
  ///
  /// In en, this message translates to:
  /// **'Long Socks'**
  String get subcategory_long_socks;

  /// Brand label for Long Socks
  ///
  /// In en, this message translates to:
  /// **'Long Socks'**
  String get brand_long_socks;

  /// Subcategory label for Short Socks
  ///
  /// In en, this message translates to:
  /// **'Short Socks'**
  String get subcategory_short_socks;

  /// Brand label for Short Socks
  ///
  /// In en, this message translates to:
  /// **'Short Socks'**
  String get brand_short_socks;

  /// Category label for Glasses
  ///
  /// In en, this message translates to:
  /// **'Glasses'**
  String get category_glasses;

  /// Subcategory label for Welding Glasses
  ///
  /// In en, this message translates to:
  /// **'Welding Glasses'**
  String get subcategory_welding_glasses;

  /// Brand label for Welding Glasses
  ///
  /// In en, this message translates to:
  /// **'Welding Glasses'**
  String get brand_welding_glasses;

  /// Subcategory label for Dust Glasses
  ///
  /// In en, this message translates to:
  /// **'Dust Glasses'**
  String get subcategory_dust_glasses;

  /// Brand label for Dust Glasses
  ///
  /// In en, this message translates to:
  /// **'Dust Glasses'**
  String get brand_dust_glasses;

  /// Subcategory label for Sunglasses
  ///
  /// In en, this message translates to:
  /// **'Sunglasses'**
  String get subcategory_sunglasses;

  /// Brand label for Sunglasses
  ///
  /// In en, this message translates to:
  /// **'Sunglasses'**
  String get brand_sunglasses;

  /// Color label for Red
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get itemColorRed;

  /// Color label for Blue
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get itemColorBlue;

  /// Color label for Yellow
  ///
  /// In en, this message translates to:
  /// **'Yellow'**
  String get itemColorYellow;

  /// Color label for Black
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get itemColorBlack;

  /// Color label for White
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get itemColorWhite;

  /// Color label for Green
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get itemColorGreen;

  /// Color label for Orange
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get itemColorOrange;

  /// Color label for Brown
  ///
  /// In en, this message translates to:
  /// **'Brown'**
  String get itemColorBrown;

  /// Color label for Grey
  ///
  /// In en, this message translates to:
  /// **'Grey'**
  String get itemColorGrey;

  /// Color label for Pink
  ///
  /// In en, this message translates to:
  /// **'Pink'**
  String get itemColorPink;

  /// Color label for Purple
  ///
  /// In en, this message translates to:
  /// **'Purple'**
  String get itemColorPurple;

  /// Color label for Silver
  ///
  /// In en, this message translates to:
  /// **'Silver'**
  String get itemColorSilver;

  /// Color label for Gold
  ///
  /// In en, this message translates to:
  /// **'Gold'**
  String get itemColorGold;

  /// Color label for Khaki
  ///
  /// In en, this message translates to:
  /// **'Khaki'**
  String get itemColorKaki;

  /// Color label for Other
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get itemColorOther;

  /// Lable for payment method.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get paymentWithCash;

  /// Lable for payment method.
  ///
  /// In en, this message translates to:
  /// **'Check book'**
  String get paymentWithCheck;

  /// Lable for payment method.
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get creditNoPayment;

  /// Lable for payment method.
  ///
  /// In en, this message translates to:
  /// **'barter'**
  String get paymentInKind;

  /// Lable for payment method.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get paymentWithBankTransfer;

  /// Title for the purchase items screen.
  ///
  /// In en, this message translates to:
  /// **'Purchase Items'**
  String get purchase_items;

  /// Tooltip for the filter button
  ///
  /// In en, this message translates to:
  /// **'Filter Items'**
  String get filter_items;

  /// Title for the filters section.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// Label for the subcategory.
  ///
  /// In en, this message translates to:
  /// **'Subcategory'**
  String get subcategory;

  /// Label for the second subcategory .
  ///
  /// In en, this message translates to:
  /// **'Subcategory 2'**
  String get subcategory2;

  /// Label for the color .
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// Label for the size .
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// Label for the shoes size
  ///
  /// In en, this message translates to:
  /// **'Shoes Size'**
  String get shoe_size;

  /// Label for the low stock.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get low_stock;

  /// Label for none
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// Label for done
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Message shown when no items are found.
  ///
  /// In en, this message translates to:
  /// **'No items found.'**
  String get no_items_found;

  /// Title for the sales items screen
  ///
  /// In en, this message translates to:
  /// **'Sales Items'**
  String get sales_items;

  /// Label for unit filter
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unit;

  /// Label for product name filter
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get product_name;

  /// Label for profitable items filter
  ///
  /// In en, this message translates to:
  /// **'Profitable Items'**
  String get profitable_items;

  /// Fallback label for unknown product name
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// Label for Purchases
  ///
  /// In en, this message translates to:
  /// **'Purchases'**
  String get purchases;

  /// Label for the date of the purchase
  ///
  /// In en, this message translates to:
  /// **'Purchase Date'**
  String get purchase_date;

  /// Label for toggling additional purchase fields
  ///
  /// In en, this message translates to:
  /// **'Show Additional Purchase Fields'**
  String get show_additional_purchase_fields;

  /// Label for the invoice number of the purchase
  ///
  /// In en, this message translates to:
  /// **'Invoice Number'**
  String get invoice_number;

  /// Label for the vendor name of the purchase
  ///
  /// In en, this message translates to:
  /// **'Vendor Name'**
  String get vendor_name;

  /// Label for the tax associated with the purchase
  ///
  /// In en, this message translates to:
  /// **'Buy Tax'**
  String get buy_tax;

  /// Label for the amount paid for the purchase
  ///
  /// In en, this message translates to:
  /// **'Paid Amount'**
  String get paid_amount;

  /// Label for canceling item addition
  ///
  /// In en, this message translates to:
  /// **'Cancel Add Item'**
  String get cancel_add_item;

  /// Label for adding a new item
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get add_item;

  /// Label for canceling expense addition
  ///
  /// In en, this message translates to:
  /// **'Cancel Add Expense'**
  String get cancel_add_expense;

  /// Message when no items are added
  ///
  /// In en, this message translates to:
  /// **'No items added'**
  String get no_items;

  /// Label for item minimum stock
  ///
  /// In en, this message translates to:
  /// **'Minimum Stock'**
  String get min_stock;

  /// Label for item discount
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// Label for item tax
  ///
  /// In en, this message translates to:
  /// **'Item Tax'**
  String get item_tax;

  /// Label for item stock location
  ///
  /// In en, this message translates to:
  /// **'Stock Location'**
  String get stock_location;

  /// Label for item stock reference
  ///
  /// In en, this message translates to:
  /// **'Stock Reference'**
  String get stock_ref;

  /// Label for expense receipt image
  ///
  /// In en, this message translates to:
  /// **'Image Receipt'**
  String get image_receipt;

  /// Error message when payment method is not selected
  ///
  /// In en, this message translates to:
  /// **'Payment Method is required'**
  String get payment_method_required;

  /// Error message when quantity is empty or invalid
  ///
  /// In en, this message translates to:
  /// **'Valid quantity required'**
  String get quantity_required;

  /// Error message when unit cost is empty or invalid
  ///
  /// In en, this message translates to:
  /// **'Valid unit cost required'**
  String get unit_cost_required;

  /// Error message when color is not selected
  ///
  /// In en, this message translates to:
  /// **'Color is required'**
  String get color_required;

  /// Error message when shoe size is empty or invalid
  ///
  /// In en, this message translates to:
  /// **'Valid shoe size required'**
  String get shoe_size_required;

  /// Error message when size is not selected
  ///
  /// In en, this message translates to:
  /// **'Size is required'**
  String get size_required;

  /// Error message when expense amount is empty or invalid
  ///
  /// In en, this message translates to:
  /// **'Valid amount required'**
  String get amount_required;

  /// Error message when tax is negative
  ///
  /// In en, this message translates to:
  /// **'Tax cannot be negative'**
  String get invalid_tax;

  /// Error message when discount is negative
  ///
  /// In en, this message translates to:
  /// **'Discount cannot be negative'**
  String get invalid_discount;

  /// Error message when minimum stock is negative
  ///
  /// In en, this message translates to:
  /// **'Minimum stock cannot be negative'**
  String get invalid_min_stock;

  /// Error message when amount is negative
  ///
  /// In en, this message translates to:
  /// **'Amount cannot be negative'**
  String get invalid_amount;

  /// Message prompting to fill required fields
  ///
  /// In en, this message translates to:
  /// **'Please fill'**
  String get please_fill;

  /// Label for ethiopian Money
  ///
  /// In en, this message translates to:
  /// **'ETB'**
  String get birr;

  /// Error when group name is empty
  ///
  /// In en, this message translates to:
  /// **'Group name is required'**
  String get group_name_required;

  /// Error when priority is not a valid number
  ///
  /// In en, this message translates to:
  /// **'Priority must be a valid number'**
  String get priority_invalid;

  /// Error when category ID is invalid for update
  ///
  /// In en, this message translates to:
  /// **'Invalid category ID for update'**
  String get invalid_category_id;

  /// Error when category save fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to save category: {error}'**
  String failed_save_category(Object error);

  /// Error when date is in the future
  ///
  /// In en, this message translates to:
  /// **'Date cannot be in the future'**
  String get date_future_invalid;

  /// Error when updating expenses date fails
  ///
  /// In en, this message translates to:
  /// **'Failed to update expenses date'**
  String get failed_update_expenses;

  /// Error when adding item fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to add item: {error}'**
  String failed_add_item(Object error);

  /// Error when unit cost is not positive
  ///
  /// In en, this message translates to:
  /// **'Unit cost must be positive'**
  String get unit_cost_positive;

  /// Error when discount is not positive
  ///
  /// In en, this message translates to:
  /// **'Discount must be positive'**
  String get discount_positive;

  /// Error when item tax is not positive
  ///
  /// In en, this message translates to:
  /// **'Item tax must be positive'**
  String get item_tax_positive;

  /// Error when item is not found
  ///
  /// In en, this message translates to:
  /// **'Item not found'**
  String get item_not_found;

  /// Error when updating item fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to update item: {error}'**
  String failed_update_item(Object error);

  /// Error when removing item fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to remove item: {error}'**
  String failed_remove_item(Object error);

  /// Label for sale field
  ///
  /// In en, this message translates to:
  /// **'Sale'**
  String get sale;

  /// Error when amount is not positive
  ///
  /// In en, this message translates to:
  /// **'Amount must be positive'**
  String get amount_positive;

  /// Error when payment method is empty
  ///
  /// In en, this message translates to:
  /// **'Payment method cannot be none'**
  String get payment_method_not_none;

  /// Error when tax is negative
  ///
  /// In en, this message translates to:
  /// **'Tax cannot be negative'**
  String get tax_negative;

  /// Error when adding expense fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to add expense: {error}'**
  String failed_add_expense(Object error);

  /// Error when expense is not found
  ///
  /// In en, this message translates to:
  /// **'Expense not found'**
  String get expense_not_found;

  /// Error when form validation fails
  ///
  /// In en, this message translates to:
  /// **'Form validation failed'**
  String get form_validation_failed;

  /// Error when no purchase item is provided
  ///
  /// In en, this message translates to:
  /// **'At least one purchase item is required'**
  String get purchase_item_required;

  /// Error when purchase payment method is empty
  ///
  /// In en, this message translates to:
  /// **'Purchase payment method is required'**
  String get purchase_payment_method_required;

  /// Error when purchase date is before 2000
  ///
  /// In en, this message translates to:
  /// **'Purchase date must be after the year 2000'**
  String get purchase_date_before_2000;

  /// Error when buy tax is negative
  ///
  /// In en, this message translates to:
  /// **'Buy tax cannot be negative'**
  String get buy_tax_negative;

  /// Error when paid amount is negative
  ///
  /// In en, this message translates to:
  /// **'Paid amount cannot be negative'**
  String get paid_amount_negative;

  /// Error when saving purchase fails with {error}
  ///
  /// In en, this message translates to:
  /// **'Failed to save purchase: {error}'**
  String failed_save_purchase(Object error);

  /// Success message when purchase is saved
  ///
  /// In en, this message translates to:
  /// **'Purchase saved successfully'**
  String get purchase_saved_success;

  /// Label for low stock alerts section
  ///
  /// In en, this message translates to:
  /// **'Low Stock Alerts'**
  String get low_stock_alerts;

  /// Label for quick actions section
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quick_actions;

  /// Label for owner field
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get owner;

  /// Welcome message with owner's name
  ///
  /// In en, this message translates to:
  /// **'Welcome, {ownerName}'**
  String welcome_owner(Object ownerName);

  /// Description for inventory and finance monitoring
  ///
  /// In en, this message translates to:
  /// **'Monitor your inventory and finances'**
  String get monitor_inventory;

  /// Label for inventory section
  ///
  /// In en, this message translates to:
  /// **'Inventory'**
  String get inventory;

  /// Label for Ethiopian Birr
  ///
  /// In en, this message translates to:
  /// **'ETB'**
  String get etb;

  /// Label for sales trend section
  ///
  /// In en, this message translates to:
  /// **'Sales Trend'**
  String get sales_trend;

  /// Label for swap action
  ///
  /// In en, this message translates to:
  /// **'Swap'**
  String get swap;

  /// Label for disposal action
  ///
  /// In en, this message translates to:
  /// **'Disposal'**
  String get disposal;

  /// Label for name field
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Message when no low stock items are found
  ///
  /// In en, this message translates to:
  /// **'No low stock items'**
  String get no_low_stock;

  /// Label for stock field
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Shop Address'**
  String get shopAddress;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'TIN Number'**
  String get tinNumber;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get selectTheme;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get selectCurrency;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Owner name cannot be empty'**
  String get ownerNameEmpty;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Shop name cannot be empty'**
  String get shopNameEmpty;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Phone number must be at least 10 characters'**
  String get phoneNumberInvalid;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'TIN number must be at least 8 characters'**
  String get tinNumberInvalid;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Reconciliation Threshold must be non-negative'**
  String get thresholdNegative;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Inventory Alert Level must be non-negative'**
  String get inventoryNegative;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'Tax rate must be non-negative'**
  String get taxRateNegative;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'New Field'**
  String get newField;

  /// Lable for app configuration.
  ///
  /// In en, this message translates to:
  /// **'New field must be at least 5 characters'**
  String get newFieldInvalid;

  /// Label for sales form
  ///
  /// In en, this message translates to:
  /// **'Add Sales'**
  String get add_sale;

  /// Label for sales form
  ///
  /// In en, this message translates to:
  /// **'Edit Sales'**
  String get edit_sale;

  /// Label for total quantity
  ///
  /// In en, this message translates to:
  /// **'Total Quantity'**
  String get total_quantity;

  /// Label for total expense
  ///
  /// In en, this message translates to:
  /// **'Total Expense'**
  String get total_expense;

  /// Label for expense delete confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete an expense?'**
  String get confirm_delete_expense;

  /// Label for sales delete confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this sales?'**
  String get confirm_delete_sales;

  /// Label for sales delete confirmation
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this purchase?'**
  String get confirm_delete_purchases;

  /// Label for employee expense category
  ///
  /// In en, this message translates to:
  /// **'Employee Expense'**
  String get employeeExpense;

  /// Label for guard expense category
  ///
  /// In en, this message translates to:
  /// **'Guard Expense'**
  String get guardExpense;

  /// Label for house rent expense category
  ///
  /// In en, this message translates to:
  /// **'House Rent'**
  String get houseRent;

  /// Label for food expense category
  ///
  /// In en, this message translates to:
  /// **'Food Expense'**
  String get food;

  /// Label for transportation expense category
  ///
  /// In en, this message translates to:
  /// **'Transportation Expense'**
  String get transportation;

  /// Label for goods transport expense category
  ///
  /// In en, this message translates to:
  /// **'Goods Transport Expense'**
  String get goodsTransport;

  /// Label for festal expense category
  ///
  /// In en, this message translates to:
  /// **'Plastic packaging Expense'**
  String get festal;

  /// Label for waste expense category
  ///
  /// In en, this message translates to:
  /// **'Waste Expense'**
  String get waste;

  /// Label for packaging expense category
  ///
  /// In en, this message translates to:
  /// **'Packaging Expense'**
  String get packaging;

  /// Label for commission expense category
  ///
  /// In en, this message translates to:
  /// **'Commission Expense'**
  String get commission;

  /// Label for militia expense category
  ///
  /// In en, this message translates to:
  /// **'Militia Expense'**
  String get militia;

  /// Label for warehouse expense category
  ///
  /// In en, this message translates to:
  /// **'Warehouse Expense'**
  String get warehouse;

  /// Label for other things.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// Label for text Field amount
  ///
  /// In en, this message translates to:
  /// **'Price Amount'**
  String get current_amount;

  /// Label for to pick image
  ///
  /// In en, this message translates to:
  /// **'Tap to pick image'**
  String get tap_to_pick_image;

  /// Lable for to take photo
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get take_photo;

  /// Lable for to choose form gallery
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get choose_from_gallery;

  /// Lable for color swap
  ///
  /// In en, this message translates to:
  /// **'Color Swap'**
  String get swapReasonColor;

  /// Label for size swap
  ///
  /// In en, this message translates to:
  /// **'Size Swap'**
  String get swapReasonSize;

  /// label for brand swap
  ///
  /// In en, this message translates to:
  /// **'Brand Swap'**
  String get swapReasonBrand;

  /// Translation for item condition: New
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get itemConditionNew;

  /// Translation for item condition: Used
  ///
  /// In en, this message translates to:
  /// **'Used'**
  String get itemConditionUsed;

  /// Translation for item condition: Refurbished
  ///
  /// In en, this message translates to:
  /// **'Refurbished'**
  String get itemConditionRefurbished;

  /// Translation for item condition: Defective
  ///
  /// In en, this message translates to:
  /// **'Defective'**
  String get itemConditionDefective;

  /// Label for purchase
  ///
  /// In en, this message translates to:
  /// **'ግዢ'**
  String get purchase;

  /// Label for Sales
  ///
  /// In en, this message translates to:
  /// **'ሽያጭ'**
  String get sales;

  /// Label for analytics
  ///
  /// In en, this message translates to:
  /// **'ሪፖርት'**
  String get analytics;

  /// Label for finance
  ///
  /// In en, this message translates to:
  /// **'ፋይናንስ'**
  String get finance;

  /// Label for expense
  ///
  /// In en, this message translates to:
  /// **'ወጪ'**
  String get expense;

  /// Label for setting
  ///
  /// In en, this message translates to:
  /// **'ቅንብር'**
  String get setting;

  /// Label for the rental details section
  ///
  /// In en, this message translates to:
  /// **'Rental Details'**
  String get rentalDetails;

  /// Label for the start date field
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// Error message when the start date field is empty
  ///
  /// In en, this message translates to:
  /// **'Start Date is required'**
  String get startDateRequired;

  /// Label for the end date field
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// Error message when the end date field is empty
  ///
  /// In en, this message translates to:
  /// **'End Date is required'**
  String get endDateRequired;

  /// Label for the purchase item search field
  ///
  /// In en, this message translates to:
  /// **'Search Purchased Items'**
  String get searchPurchasedItems;

  /// Error message when no purchase item is selected
  ///
  /// In en, this message translates to:
  /// **'Please select a purchase item'**
  String get selectPurchaseItem;

  /// Label for the customer ID field
  ///
  /// In en, this message translates to:
  /// **'Customer ID'**
  String get customerId;

  /// Error message when the customer ID field is empty
  ///
  /// In en, this message translates to:
  /// **'Customer ID is required'**
  String get customerIdRequired;

  /// Label for the rental fee field
  ///
  /// In en, this message translates to:
  /// **'Rental Fee'**
  String get rentalFee;

  /// Error message when the rental fee field is empty
  ///
  /// In en, this message translates to:
  /// **'Rental Fee is required'**
  String get rentalFeeRequired;

  /// Error message when the rental fee is invalid or negative
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid rental fee'**
  String get validRentalFee;

  /// Label for the rent quantity field
  ///
  /// In en, this message translates to:
  /// **'Rent Quantity'**
  String get rentQuantity;

  /// Error message when the rent quantity field is empty
  ///
  /// In en, this message translates to:
  /// **'Rent Quantity is required'**
  String get rentQuantityRequired;

  /// Error message when the rent quantity is invalid or non-positive
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid quantity'**
  String get validQuantity;

  /// Label for the deposit field
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// Error message when the deposit field is empty
  ///
  /// In en, this message translates to:
  /// **'Deposit is required'**
  String get depositRequired;

  /// Error message when the deposit is invalid or negative
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid deposit'**
  String get validDeposit;

  /// Label for the rental status dropdown
  ///
  /// In en, this message translates to:
  /// **'Rental Status'**
  String get rentalStatus;

  /// Error message when no rental status is selected
  ///
  /// In en, this message translates to:
  /// **'Rental Status is required'**
  String get rentalStatusRequired;

  /// Label for the checkbox to show additional fields
  ///
  /// In en, this message translates to:
  /// **'Show Additional Fields'**
  String get showAdditionalFields;

  /// Label for the item SKU field
  ///
  /// In en, this message translates to:
  /// **'Item SKU'**
  String get itemSKU;

  /// Label for the image path field
  ///
  /// In en, this message translates to:
  /// **'Image Path'**
  String get imagePath;

  /// Title for the app bar when adding a new rental
  ///
  /// In en, this message translates to:
  /// **'Add Rental'**
  String get addRental;

  /// Title for the app bar when editing an existing rental
  ///
  /// In en, this message translates to:
  /// **'Edit Rental'**
  String get editRental;

  /// Label for the cost field in purchase item selection
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get cost;

  /// Label for the disposal details section
  ///
  /// In en, this message translates to:
  /// **'Disposal Details'**
  String get disposalDetails;

  /// Label for the disposal date field
  ///
  /// In en, this message translates to:
  /// **'Disposal Date'**
  String get disposalDate;

  /// Error message when the disposal date field is empty
  ///
  /// In en, this message translates to:
  /// **'Disposal Date is required'**
  String get disposalDateRequired;

  /// Error message when the quantity field is empty
  ///
  /// In en, this message translates to:
  /// **'Quantity is required'**
  String get quantityRequired;

  /// Label for the disposal reason dropdown
  ///
  /// In en, this message translates to:
  /// **'Disposal Reason'**
  String get disposalReason;

  /// Error message when no disposal reason is selected
  ///
  /// In en, this message translates to:
  /// **'Disposal Reason is required'**
  String get disposalReasonRequired;

  /// Label for the disposal method dropdown
  ///
  /// In en, this message translates to:
  /// **'Disposal Method'**
  String get disposalMethod;

  /// Error message when no disposal method is selected
  ///
  /// In en, this message translates to:
  /// **'Disposal Method is required'**
  String get disposalMethodRequired;

  /// Label for the original item cost field
  ///
  /// In en, this message translates to:
  /// **'Original Item Cost'**
  String get originalItemCost;

  /// Error message when the original item cost field is empty
  ///
  /// In en, this message translates to:
  /// **'Original Item Cost is required'**
  String get originalItemCostRequired;

  /// Error message when the original item cost is invalid or negative
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid original item cost'**
  String get validOriginalItemCost;

  /// Label for the stock location field
  ///
  /// In en, this message translates to:
  /// **'Stock Location'**
  String get stockLocation;

  /// Label for the expense description field
  ///
  /// In en, this message translates to:
  /// **'Expense Description'**
  String get expenseDescription;

  /// Label for the expense ID field
  ///
  /// In en, this message translates to:
  /// **'Expense ID'**
  String get expenseId;

  /// Label for the disposal expense amount field
  ///
  /// In en, this message translates to:
  /// **'Disposal Expense Amount'**
  String get disposalExpenseAmount;

  /// Error message when the disposal expense amount is invalid or negative
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid disposal expense amount'**
  String get validDisposalExpenseAmount;

  /// Label for the processed by staff ID field
  ///
  /// In en, this message translates to:
  /// **'Processed By Staff ID'**
  String get processedByStaffId;

  /// Title for the app bar when adding a new disposal
  ///
  /// In en, this message translates to:
  /// **'Add Disposal'**
  String get addDisposal;

  /// Title for the app bar when editing an existing disposal
  ///
  /// In en, this message translates to:
  /// **'Edit Disposal'**
  String get editDisposal;

  /// Title for inventory app.
  ///
  /// In en, this message translates to:
  /// **'Inventory App'**
  String get inventoryApp;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['am', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

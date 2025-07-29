// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Title for the settings menu',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Label for language selection',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: 'Name of the English language',
      args: [],
    );
  }

  /// `Amharic`
  String get amharic {
    return Intl.message(
      'Amharic',
      name: 'amharic',
      desc: 'Name of the Amharic language',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: 'Lable for date', args: []);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: 'Label for the dashboard screen',
      args: [],
    );
  }

  /// `Owner Name`
  String get ownerName {
    return Intl.message(
      'Owner Name',
      name: 'ownerName',
      desc: 'Label for the owner\'s name field',
      args: [],
    );
  }

  /// `Shop Name`
  String get shopName {
    return Intl.message(
      'Shop Name',
      name: 'shopName',
      desc: 'Label for the shop\'s name field',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: 'Label for the save button',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: 'Label for the cancel button',
      args: [],
    );
  }

  /// `Not Set`
  String get notSet {
    return Intl.message(
      'Not Set',
      name: 'notSet',
      desc: 'Text shown when a field is not configured',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: 'Option to select logo from gallery',
      args: [],
    );
  }

  /// `Assets`
  String get assets {
    return Intl.message(
      'Assets',
      name: 'assets',
      desc: 'Option to select logo from assets',
      args: [],
    );
  }

  /// `Select Logo Source`
  String get selectLogoSource {
    return Intl.message(
      'Select Logo Source',
      name: 'selectLogoSource',
      desc: 'Title for logo source selection dialog',
      args: [],
    );
  }

  /// `Reconciliation Threshold`
  String get reconciliationThreshold {
    return Intl.message(
      'Reconciliation Threshold',
      name: 'reconciliationThreshold',
      desc: 'Label for reconciliation threshold setting',
      args: [],
    );
  }

  /// `Inventory Alert Level`
  String get inventoryAlertLevel {
    return Intl.message(
      'Inventory Alert Level',
      name: 'inventoryAlertLevel',
      desc: 'Label for inventory alert level setting',
      args: [],
    );
  }

  /// `Tax Rate`
  String get taxRate {
    return Intl.message(
      'Tax Rate',
      name: 'taxRate',
      desc: 'Label for tax rate setting',
      args: [],
    );
  }

  /// `Logo`
  String get logo {
    return Intl.message(
      'Logo',
      name: 'logo',
      desc: 'Label for logo setting',
      args: [],
    );
  }

  /// `Ana Safety Shop`
  String get anaSafetyShop {
    return Intl.message(
      'Ana Safety Shop',
      name: 'anaSafetyShop',
      desc: 'Default app title when shop name is not set',
      args: [],
    );
  }

  /// `Please provide your name and shop details to continue.`
  String get initialSetupMessage {
    return Intl.message(
      'Please provide your name and shop details to continue.',
      name: 'initialSetupMessage',
      desc: 'Message shown in the initial setup dialog',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterOwnerName {
    return Intl.message(
      'Enter your name',
      name: 'enterOwnerName',
      desc: 'Hint text for owner name field',
      args: [],
    );
  }

  /// `Enter shop name`
  String get enterShopName {
    return Intl.message(
      'Enter shop name',
      name: 'enterShopName',
      desc: 'Hint text for shop name field',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: 'Title for success snackbar',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: 'Title for error snackbar',
      args: [],
    );
  }

  /// `Setup completed`
  String get setupCompleted {
    return Intl.message(
      'Setup completed',
      name: 'setupCompleted',
      desc: 'Message for successful setup completion',
      args: [],
    );
  }

  /// `Failed to save setup`
  String get failedToSaveSetup {
    return Intl.message(
      'Failed to save setup',
      name: 'failedToSaveSetup',
      desc: 'Error message for setup failure',
      args: [],
    );
  }

  /// `Owner Name and Shop Name are required`
  String get ownerNameAndShopName {
    return Intl.message(
      'Owner Name and Shop Name are required',
      name: 'ownerNameAndShopName',
      desc: 'Error message for empty owner name or shop name',
      args: [],
    );
  }

  /// `Enter {field}`
  String enterField(Object field) {
    return Intl.message(
      'Enter $field',
      name: 'enterField',
      desc: 'Hint text for input field',
      args: [field],
    );
  }

  /// `Owner name updated`
  String get ownerNameUpdated {
    return Intl.message(
      'Owner name updated',
      name: 'ownerNameUpdated',
      desc: 'Message for successful owner name update',
      args: [],
    );
  }

  /// `Failed to update owner name`
  String get failedToUpdateOwnerName {
    return Intl.message(
      'Failed to update owner name',
      name: 'failedToUpdateOwnerName',
      desc: 'Error message for failed owner name update',
      args: [],
    );
  }

  /// `Owner name cannot be empty`
  String get ownerNameCannotBeEmpty {
    return Intl.message(
      'Owner name cannot be empty',
      name: 'ownerNameCannotBeEmpty',
      desc: 'Error message for empty owner name',
      args: [],
    );
  }

  /// `Shop name updated`
  String get shopNameUpdated {
    return Intl.message(
      'Shop name updated',
      name: 'shopNameUpdated',
      desc: 'Success message for successful shop name update',
      args: [],
    );
  }

  /// `Failed to update shop name`
  String get failedToUpdateShopName {
    return Intl.message(
      'Failed to update shop name',
      name: 'failedToUpdateShopName',
      desc: 'Error message for shop name update failure',
      args: [],
    );
  }

  /// `Shop name cannot be empty`
  String get shopNameCannotBeEmpty {
    return Intl.message(
      'Shop name cannot be empty',
      name: 'shopNameCannotBeEmpty',
      desc: 'Error message for empty shop name',
      args: [],
    );
  }

  /// `Reconciliation threshold updated`
  String get reconciliationThresholdUpdated {
    return Intl.message(
      'Reconciliation threshold updated',
      name: 'reconciliationThresholdUpdated',
      desc: 'Success message for successful threshold update',
      args: [],
    );
  }

  /// `Failed to update threshold`
  String get failedToUpdateThreshold {
    return Intl.message(
      'Failed to update threshold',
      name: 'failedToUpdateThreshold',
      desc: 'Error message for threshold update failure',
      args: [],
    );
  }

  /// `Threshold must be a positive number`
  String get thresholdMustBePositive {
    return Intl.message(
      'Threshold must be a positive number',
      name: 'thresholdMustBePositive',
      desc: 'Error message for invalid threshold',
      args: [],
    );
  }

  /// `Inventory alert level updated`
  String get inventoryAlertLevelUpdated {
    return Intl.message(
      'Inventory alert level updated',
      name: 'inventoryAlertLevelUpdated',
      desc: 'Success message for successful alert level update',
      args: [],
    );
  }

  /// `Failed to update alert level`
  String get failedToUpdateAlertLevel {
    return Intl.message(
      'Failed to update alert level',
      name: 'failedToUpdateAlertLevel',
      desc: 'Error message for alert level update failure',
      args: [],
    );
  }

  /// `Alert level must be non-negative`
  String get alertLevelMustBeNonNegative {
    return Intl.message(
      'Alert level must be non-negative',
      name: 'alertLevelMustBeNonNegative',
      desc: 'Error message for invalid alert level',
      args: [],
    );
  }

  /// `Tax rate updated`
  String get taxRateUpdated {
    return Intl.message(
      'Tax rate updated',
      name: 'taxRateUpdated',
      desc: 'Success message for tax',
      args: [],
    );
  }

  /// `Failed to update tax`
  String get failedToUpdateTaxRate {
    return Intl.message(
      'Failed to update tax',
      name: 'failedToUpdateTaxRate',
      desc: 'Error message for tax',
      args: [],
    );
  }

  /// `Tax rate must be non-negative`
  String get taxRateMustBeNonNegative {
    return Intl.message(
      'Tax rate must be non-negative',
      name: 'taxRateMustBeNonNegative',
      desc: 'Error message for invalid tax rate',
      args: [],
    );
  }

  /// `Logo updated from gallery`
  String get logoUpdatedFromGallery {
    return Intl.message(
      'Logo updated from gallery',
      name: 'logoUpdatedFromGallery',
      desc: 'Success message for successful logo update from gallery',
      args: [],
    );
  }

  /// `Logo updated from assets`
  String get logoUpdatedFromAssets {
    return Intl.message(
      'Logo updated from assets',
      name: 'logoUpdatedFromAssets',
      desc: 'Success message for successful logo update from assets',
      args: [],
    );
  }

  /// `Failed to update logo`
  String get failedToUpdateLogo {
    return Intl.message(
      'Failed to update logo',
      name: 'failedToUpdateLogo',
      desc: 'Error message for logo update failure',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: 'Label for theme setting',
      args: [],
    );
  }

  /// `Invalid`
  String get invalid {
    return Intl.message(
      'Invalid',
      name: 'invalid',
      desc: 'Message for invalid',
      args: [],
    );
  }

  /// `Owner and Shop names are required`
  String get ownerNameAndShopNameRequired {
    return Intl.message(
      'Owner and Shop names are required',
      name: 'ownerNameAndShopNameRequired',
      desc: 'Message for owner and shop name validation',
      args: [],
    );
  }

  /// `Accounts Overview`
  String get accounts_overview {
    return Intl.message(
      'Accounts Overview',
      name: 'accounts_overview',
      desc: 'Title for the accounts overview screen',
      args: [],
    );
  }

  /// `Accounts`
  String get accounts {
    return Intl.message(
      'Accounts',
      name: 'accounts',
      desc: 'Label for the accounts tab',
      args: [],
    );
  }

  /// `Reports`
  String get reports {
    return Intl.message(
      'Reports',
      name: 'reports',
      desc: 'Label for the reports tab',
      args: [],
    );
  }

  /// `Refresh Accounts`
  String get refresh_accounts {
    return Intl.message(
      'Refresh Accounts',
      name: 'refresh_accounts',
      desc: 'Tooltip for the refresh accounts button',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: 'Label for the create account action',
      args: [],
    );
  }

  /// `Search Accounts`
  String get search_accounts {
    return Intl.message(
      'Search Accounts',
      name: 'search_accounts',
      desc: 'Label for the search accounts input',
      args: [],
    );
  }

  /// `No accounts match your search`
  String get no_accounts_found {
    return Intl.message(
      'No accounts match your search',
      name: 'no_accounts_found',
      desc: 'Message when no accounts are found',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: 'Label for the retry button',
      args: [],
    );
  }

  /// `Balance Sheet`
  String get balance_sheet {
    return Intl.message(
      'Balance Sheet',
      name: 'balance_sheet',
      desc: 'Title for the balance sheet report',
      args: [],
    );
  }

  /// `Income Statement`
  String get income_statement {
    return Intl.message(
      'Income Statement',
      name: 'income_statement',
      desc: 'Title for the income statement report',
      args: [],
    );
  }

  /// `Cash Flow`
  String get cash_flow {
    return Intl.message(
      'Cash Flow',
      name: 'cash_flow',
      desc: 'Title for the cash flow report',
      args: [],
    );
  }

  /// `Category Summary`
  String get category_summary {
    return Intl.message(
      'Category Summary',
      name: 'category_summary',
      desc: 'Title for the category summary report',
      args: [],
    );
  }

  /// `Type Summary`
  String get type_summary {
    return Intl.message(
      'Type Summary',
      name: 'type_summary',
      desc: 'Title for the type summary report',
      args: [],
    );
  }

  /// `Trial Balance`
  String get trial_balance {
    return Intl.message(
      'Trial Balance',
      name: 'trial_balance',
      desc: 'Title for the trial balance report',
      args: [],
    );
  }

  /// `Liabilities`
  String get liabilities {
    return Intl.message(
      'Liabilities',
      name: 'liabilities',
      desc: 'Label for liabilities in reports',
      args: [],
    );
  }

  /// `Equity`
  String get equity {
    return Intl.message(
      'Equity',
      name: 'equity',
      desc: 'Label for equity in reports',
      args: [],
    );
  }

  /// `Revenue`
  String get revenue {
    return Intl.message(
      'Revenue',
      name: 'revenue',
      desc: 'Label for revenue in reports',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: 'Label for expenses in reports',
      args: [],
    );
  }

  /// `Net Income`
  String get net_income {
    return Intl.message(
      'Net Income',
      name: 'net_income',
      desc: 'Label for net income in reports',
      args: [],
    );
  }

  /// `Operating`
  String get operating {
    return Intl.message(
      'Operating',
      name: 'operating',
      desc: 'Label for operating cash flow',
      args: [],
    );
  }

  /// `Investing`
  String get investing {
    return Intl.message(
      'Investing',
      name: 'investing',
      desc: 'Label for investing cash flow',
      args: [],
    );
  }

  /// `Financing`
  String get financing {
    return Intl.message(
      'Financing',
      name: 'financing',
      desc: 'Label for financing cash flow',
      args: [],
    );
  }

  /// `Net Change`
  String get net_change {
    return Intl.message(
      'Net Change',
      name: 'net_change',
      desc: 'Label for net change in cash flow',
      args: [],
    );
  }

  /// `Account Name`
  String get account_name {
    return Intl.message(
      'Account Name',
      name: 'account_name',
      desc: 'Label for account name input',
      args: [],
    );
  }

  /// `Account Type`
  String get account_type {
    return Intl.message(
      'Account Type',
      name: 'account_type',
      desc: 'Label for account type input',
      args: [],
    );
  }

  /// `Account Category`
  String get account_category {
    return Intl.message(
      'Account Category',
      name: 'account_category',
      desc: 'Label for account category input',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: 'Label for account balance',
      args: [],
    );
  }

  /// `Chart Number`
  String get chart_number {
    return Intl.message(
      'Chart Number',
      name: 'chart_number',
      desc: 'Label for chart number',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: 'Label for account ID',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: 'Label for active status',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: 'Label for notes',
      args: [],
    );
  }

  /// `Notes (Optional)`
  String get notes_optional {
    return Intl.message(
      'Notes (Optional)',
      name: 'notes_optional',
      desc: 'Label for optional notes input',
      args: [],
    );
  }

  /// `Chart`
  String get chart {
    return Intl.message(
      'Chart',
      name: 'chart',
      desc: 'Label for chart number in account details',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: 'Label for account type in details',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: 'Label for account category in details',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: 'Label for active status yes',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: 'Label for active status no',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: 'Label for edit action',
      args: [],
    );
  }

  /// `Deactivate`
  String get deactivate {
    return Intl.message(
      'Deactivate',
      name: 'deactivate',
      desc: 'Label for deactivate action',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: 'Label for create action',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: 'Label for close action',
      args: [],
    );
  }

  /// `Name is required`
  String get name_required {
    return Intl.message(
      'Name is required',
      name: 'name_required',
      desc: 'Validation error for empty name',
      args: [],
    );
  }

  /// `Please select an account type`
  String get type_required {
    return Intl.message(
      'Please select an account type',
      name: 'type_required',
      desc: 'Validation error for missing account type',
      args: [],
    );
  }

  /// `Please select an account category`
  String get category_required {
    return Intl.message(
      'Please select an account category',
      name: 'category_required',
      desc: 'Validation error for missing account category',
      args: [],
    );
  }

  /// `Balance is required`
  String get balance_required {
    return Intl.message(
      'Balance is required',
      name: 'balance_required',
      desc: 'Validation error for missing balance',
      args: [],
    );
  }

  /// `Enter a valid number`
  String get invalid_number {
    return Intl.message(
      'Enter a valid number',
      name: 'invalid_number',
      desc: 'Validation error for invalid number',
      args: [],
    );
  }

  /// `Error`
  String get error_title {
    return Intl.message(
      'Error',
      name: 'error_title',
      desc: 'Title for error messages',
      args: [],
    );
  }

  /// `Success`
  String get success_title {
    return Intl.message(
      'Success',
      name: 'success_title',
      desc: 'Title for success messages',
      args: [],
    );
  }

  /// `Account name cannot be empty`
  String get error_empty_name {
    return Intl.message(
      'Account name cannot be empty',
      name: 'error_empty_name',
      desc: 'Error message for empty account name',
      args: [],
    );
  }

  /// `Account ID cannot be empty`
  String get error_empty_id {
    return Intl.message(
      'Account ID cannot be empty',
      name: 'error_empty_id',
      desc: 'Error message for empty account ID',
      args: [],
    );
  }

  /// `Failed to create account: {error}`
  String error_create_account(Object error) {
    return Intl.message(
      'Failed to create account: $error',
      name: 'error_create_account',
      desc: 'Error message for failed account creation',
      args: [error],
    );
  }

  /// `Failed to fetch accounts: {error}`
  String error_fetch_accounts(Object error) {
    return Intl.message(
      'Failed to fetch accounts: $error',
      name: 'error_fetch_accounts',
      desc: 'Error message for failed account fetch',
      args: [error],
    );
  }

  /// `Failed to filter accounts: {error}`
  String error_filter_accounts(Object error) {
    return Intl.message(
      'Failed to filter accounts: $error',
      name: 'error_filter_accounts',
      desc: 'Error message for failed account filtering',
      args: [error],
    );
  }

  /// `Failed to update financial reports: {error}`
  String error_update_reports(Object error) {
    return Intl.message(
      'Failed to update financial reports: $error',
      name: 'error_update_reports',
      desc: 'Error message for failed report update',
      args: [error],
    );
  }

  /// `Failed to fetch account: {error}`
  String error_fetch_account(Object error) {
    return Intl.message(
      'Failed to fetch account: $error',
      name: 'error_fetch_account',
      desc: 'Error message for failed account fetch',
      args: [error],
    );
  }

  /// `Failed to fetch account by name: {error}`
  String error_fetch_account_by_name(Object error) {
    return Intl.message(
      'Failed to fetch account by name: $error',
      name: 'error_fetch_account_by_name',
      desc: 'Error message for failed account fetch by name',
      args: [error],
    );
  }

  /// `Failed to update account: {error}`
  String error_update_account(Object error) {
    return Intl.message(
      'Failed to update account: $error',
      name: 'error_update_account',
      desc: 'Error message for failed account update',
      args: [error],
    );
  }

  /// `Failed to deactivate account: {error}`
  String error_deactivate_account(Object error) {
    return Intl.message(
      'Failed to deactivate account: $error',
      name: 'error_deactivate_account',
      desc: 'Error message for failed account deactivation',
      args: [error],
    );
  }

  /// `Created via UI`
  String get created_via_ui {
    return Intl.message(
      'Created via UI',
      name: 'created_via_ui',
      desc: 'Note for accounts created via UI',
      args: [],
    );
  }

  /// `Account {name} created successfully`
  String success_account_created(Object name) {
    return Intl.message(
      'Account $name created successfully',
      name: 'success_account_created',
      desc: 'Success message for account creation',
      args: [name],
    );
  }

  /// `Account {name} updated successfully`
  String success_account_updated(Object name) {
    return Intl.message(
      'Account $name updated successfully',
      name: 'success_account_updated',
      desc: 'Success message for account update',
      args: [name],
    );
  }

  /// `Account {id} deactivated successfully`
  String success_account_deactivated(Object id) {
    return Intl.message(
      'Account $id deactivated successfully',
      name: 'success_account_deactivated',
      desc: 'Success message for account deactivation',
      args: [id],
    );
  }

  /// `Edit Account`
  String get edit_account {
    return Intl.message(
      'Edit Account',
      name: 'edit_account',
      desc: 'message for editing account',
      args: [],
    );
  }

  /// `Snapshots`
  String get snapshots {
    return Intl.message(
      'Snapshots',
      name: 'snapshots',
      desc: 'Label for snapshots tab',
      args: [],
    );
  }

  /// `Purchases`
  String get purchases_tab {
    return Intl.message(
      'Purchases',
      name: 'purchases_tab',
      desc: 'Label for the purchases tab',
      args: [],
    );
  }

  /// `Failed to fetch purchases: {error}`
  String error_fetching_purchases(Object error) {
    return Intl.message(
      'Failed to fetch purchases: $error',
      name: 'error_fetching_purchases',
      desc: 'Error message for failed purchase fetch',
      args: [error],
    );
  }

  /// `No purchases found`
  String get no_purchases_found {
    return Intl.message(
      'No purchases found',
      name: 'no_purchases_found',
      desc: 'Message when no purchases are found',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: 'Label for cash payment method',
      args: [],
    );
  }

  /// `Credit`
  String get credit {
    return Intl.message(
      'Credit',
      name: 'credit',
      desc: 'Label for credit payment method',
      args: [],
    );
  }

  /// `Purchase from {name}`
  String purchase_from(Object name) {
    return Intl.message(
      'Purchase from $name',
      name: 'purchase_from',
      desc: 'Label for purchase vendor name',
      args: [name],
    );
  }

  /// `Total Amount`
  String get total_amount {
    return Intl.message(
      'Total Amount',
      name: 'total_amount',
      desc: 'Label for total purchase amount',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: 'Label for payment method',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: 'Label for items in purchase',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: 'Label for item quantity',
      args: [],
    );
  }

  /// `Unit Cost`
  String get unit_cost {
    return Intl.message(
      'Unit Cost',
      name: 'unit_cost',
      desc: 'Label for item unit cost',
      args: [],
    );
  }

  /// `Failed to fetch snapshots: {error}`
  String error_fetching_snapshots(Object error) {
    return Intl.message(
      'Failed to fetch snapshots: $error',
      name: 'error_fetching_snapshots',
      desc: 'Error message for failed snapshot fetch',
      args: [error],
    );
  }

  /// `No snapshots found`
  String get no_snapshots_found {
    return Intl.message(
      'No snapshots found',
      name: 'no_snapshots_found',
      desc: 'Message when no snapshots are found',
      args: [],
    );
  }

  /// `Snapshot Date`
  String get snapshot_date {
    return Intl.message(
      'Snapshot Date',
      name: 'snapshot_date',
      desc: 'Label for snapshot date',
      args: [],
    );
  }

  /// `Total Balance`
  String get total_balance {
    return Intl.message(
      'Total Balance',
      name: 'total_balance',
      desc: 'Label for total balance in snapshot',
      args: [],
    );
  }

  /// `Add Category`
  String get addCategory {
    return Intl.message(
      'Add Category',
      name: 'addCategory',
      desc: 'Label for adding a new category',
      args: [],
    );
  }

  /// `Edit Category`
  String get editCategory {
    return Intl.message(
      'Edit Category',
      name: 'editCategory',
      desc: 'Label for editing an existing category',
      args: [],
    );
  }

  /// `Tap to Pick Image`
  String get tapToPickImage {
    return Intl.message(
      'Tap to Pick Image',
      name: 'tapToPickImage',
      desc: 'Prompt for selecting an image',
      args: [],
    );
  }

  /// `Group`
  String get group {
    return Intl.message(
      'Group',
      name: 'group',
      desc: 'Label for category group',
      args: [],
    );
  }

  /// `Subgroup (Optional)`
  String get subgroupOptional {
    return Intl.message(
      'Subgroup (Optional)',
      name: 'subgroupOptional',
      desc: 'Label for optional subgroup',
      args: [],
    );
  }

  /// `Subgroup 2 (Optional)`
  String get subgroup2Optional {
    return Intl.message(
      'Subgroup 2 (Optional)',
      name: 'subgroup2Optional',
      desc: 'Label for optional second subgroup',
      args: [],
    );
  }

  /// `Priority`
  String get priority {
    return Intl.message(
      'Priority',
      name: 'priority',
      desc: 'Label for category priority',
      args: [],
    );
  }

  /// `Enter a valid number`
  String get enterValidNumber {
    return Intl.message(
      'Enter a valid number',
      name: 'enterValidNumber',
      desc: 'Error message for invalid number input',
      args: [],
    );
  }

  /// `Are you sure you want to delete this category?`
  String get deleteCategoryConfirmation {
    return Intl.message(
      'Are you sure you want to delete this category?',
      name: 'deleteCategoryConfirmation',
      desc: 'Message for delete confirmation',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: 'Label for delete action',
      args: [],
    );
  }

  /// `Stock Categories`
  String get stockCategories {
    return Intl.message(
      'Stock Categories',
      name: 'stockCategories',
      desc: 'Title for stock categories screen',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: 'Label for search input',
      args: [],
    );
  }

  /// `No categories found`
  String get noCategoriesFound {
    return Intl.message(
      'No categories found',
      name: 'noCategoriesFound',
      desc: 'Message when no categories are available',
      args: [],
    );
  }

  /// `Status Updated`
  String get statusUpdated {
    return Intl.message(
      'Status Updated',
      name: 'statusUpdated',
      desc: 'Message for status update confirmation',
      args: [],
    );
  }

  /// `Category added`
  String get categoryAdded {
    return Intl.message(
      'Category added',
      name: 'categoryAdded',
      desc: 'Message for successful category addition',
      args: [],
    );
  }

  /// `Category updated`
  String get categoryUpdated {
    return Intl.message(
      'Category updated',
      name: 'categoryUpdated',
      desc: 'Message for successful category update',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: 'Label for previous page button',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: 'Label for next page button',
      args: [],
    );
  }

  /// `Page`
  String get page {
    return Intl.message(
      'Page',
      name: 'page',
      desc: 'Label for page number',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: 'Label for all status filter',
      args: [],
    );
  }

  /// `Inactive`
  String get inactive {
    return Intl.message(
      'Inactive',
      name: 'inactive',
      desc: 'Label for inactive status filter',
      args: [],
    );
  }

  /// `Category activated`
  String get category_true {
    return Intl.message(
      'Category activated',
      name: 'category_true',
      desc: 'Message for activated category',
      args: [],
    );
  }

  /// `Category deactivated`
  String get category_false {
    return Intl.message(
      'Category deactivated',
      name: 'category_false',
      desc: 'Message for deactivated category',
      args: [],
    );
  }

  /// `No expenses found`
  String get no_expenses {
    return Intl.message(
      'No expenses found',
      name: 'no_expenses',
      desc: 'Message when no expenses are found',
      args: [],
    );
  }

  /// `Confirm Delete`
  String get confirm_delete {
    return Intl.message(
      'Confirm Delete',
      name: 'confirm_delete',
      desc: 'Title for delete confirmation dialog',
      args: [],
    );
  }

  /// `Delete expense '{category}'?`
  String delete_expense(Object category) {
    return Intl.message(
      'Delete expense \'$category\'?',
      name: 'delete_expense',
      desc: 'Message for delete confirmation dialog',
      args: [category],
    );
  }

  /// `Amount: ${value}`
  String amount(Object value) {
    return Intl.message(
      'Amount: \$$value',
      name: 'amount',
      desc: 'Label for expense amount',
      args: [value],
    );
  }

  /// `Payment: {method}`
  String payment(Object method) {
    return Intl.message(
      'Payment: $method',
      name: 'payment',
      desc: 'Label for payment method',
      args: [method],
    );
  }

  /// `Date: {value}`
  String expense_date(Object value) {
    return Intl.message(
      'Date: $value',
      name: 'expense_date',
      desc: 'Label for expense date',
      args: [value],
    );
  }

  /// `Edit Expense`
  String get edit_expense {
    return Intl.message(
      'Edit Expense',
      name: 'edit_expense',
      desc: 'Title for edit expense form',
      args: [],
    );
  }

  /// `Add Expense`
  String get add_expense {
    return Intl.message(
      'Add Expense',
      name: 'add_expense',
      desc: 'Title for add expense form',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: 'Error message for required field',
      args: [],
    );
  }

  /// `Must be positive`
  String get must_be_positive {
    return Intl.message(
      'Must be positive',
      name: 'must_be_positive',
      desc: 'Error message for non-positive amount',
      args: [],
    );
  }

  /// `Select date`
  String get select_date {
    return Intl.message(
      'Select date',
      name: 'select_date',
      desc: 'Placeholder for date field',
      args: [],
    );
  }

  /// `Show Additional Fields`
  String get show_additional_fields {
    return Intl.message(
      'Show Additional Fields',
      name: 'show_additional_fields',
      desc: 'Label for additional fields toggle',
      args: [],
    );
  }

  /// `Tax`
  String get tax {
    return Intl.message(
      'Tax',
      name: 'tax',
      desc: 'Label for tax field',
      args: [],
    );
  }

  /// `Must be non-negative`
  String get must_be_non_negative {
    return Intl.message(
      'Must be non-negative',
      name: 'must_be_non_negative',
      desc: 'Error message for negative tax',
      args: [],
    );
  }

  /// `Vendor`
  String get vendor {
    return Intl.message(
      'Vendor',
      name: 'vendor',
      desc: 'Label for vendor field',
      args: [],
    );
  }

  /// `Image Receipt URL`
  String get image_receipt_url {
    return Intl.message(
      'Image Receipt URL',
      name: 'image_receipt_url',
      desc: 'Label for image receipt URL field',
      args: [],
    );
  }

  /// `Receipt ID`
  String get receipt_id {
    return Intl.message(
      'Receipt ID',
      name: 'receipt_id',
      desc: 'Label for receipt ID field',
      args: [],
    );
  }

  /// `Is Prepaid`
  String get is_prepaid {
    return Intl.message(
      'Is Prepaid',
      name: 'is_prepaid',
      desc: 'Label for prepaid checkbox',
      args: [],
    );
  }

  /// `From Inventory`
  String get from_inventory {
    return Intl.message(
      'From Inventory',
      name: 'from_inventory',
      desc: 'Label for from inventory checkbox',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: 'Label for update button',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: 'Label for add button',
      args: [],
    );
  }

  /// `Please select a date`
  String get date_required {
    return Intl.message(
      'Please select a date',
      name: 'date_required',
      desc: 'Error message for missing date',
      args: [],
    );
  }

  /// `Add Purchase`
  String get add_purchase {
    return Intl.message(
      'Add Purchase',
      name: 'add_purchase',
      desc: 'Default purchase form title',
      args: [],
    );
  }

  /// `Edit Purchase`
  String get edit_purchase {
    return Intl.message(
      'Edit Purchase',
      name: 'edit_purchase',
      desc: 'Default purchase form title',
      args: [],
    );
  }

  /// `Shoes`
  String get category_shoes {
    return Intl.message(
      'Shoes',
      name: 'category_shoes',
      desc: 'Category label for Shoes',
      args: [],
    );
  }

  /// `Safety Shoes`
  String get subcategory_safety_shoes {
    return Intl.message(
      'Safety Shoes',
      name: 'subcategory_safety_shoes',
      desc: 'Subcategory label for Safety Shoes',
      args: [],
    );
  }

  /// `keskes`
  String get subcategory_keskes {
    return Intl.message(
      'keskes',
      name: 'subcategory_keskes',
      desc: 'Subcategory label for Keskes',
      args: [],
    );
  }

  /// `Boots`
  String get subcategory_boots {
    return Intl.message(
      'Boots',
      name: 'subcategory_boots',
      desc: 'Subcategory label for Boots',
      args: [],
    );
  }

  /// `Work Shoes`
  String get subcategory_work_shoes {
    return Intl.message(
      'Work Shoes',
      name: 'subcategory_work_shoes',
      desc: 'Subcategory label for Work Shoes',
      args: [],
    );
  }

  /// `Women's Shoes`
  String get subcategory_womens_shoes {
    return Intl.message(
      'Women\'s Shoes',
      name: 'subcategory_womens_shoes',
      desc: 'Subcategory label for Women\'s Shoes',
      args: [],
    );
  }

  /// `Local Shoes`
  String get subcategory_local_shoes {
    return Intl.message(
      'Local Shoes',
      name: 'subcategory_local_shoes',
      desc: 'Subcategory label for Local Shoes',
      args: [],
    );
  }

  /// `with extra`
  String get brand_with_extra {
    return Intl.message(
      'with extra',
      name: 'brand_with_extra',
      desc: 'Brand label for Keskes',
      args: [],
    );
  }

  /// `Lion`
  String get brand_lion {
    return Intl.message(
      'Lion',
      name: 'brand_lion',
      desc: 'Brand label for Lion',
      args: [],
    );
  }

  /// `Black Nile`
  String get brand_black_nile {
    return Intl.message(
      'Black Nile',
      name: 'brand_black_nile',
      desc: 'Brand label for Black Nile',
      args: [],
    );
  }

  /// `Ramsey`
  String get brand_ramsey {
    return Intl.message(
      'Ramsey',
      name: 'brand_ramsey',
      desc: 'Brand label for Ramsey',
      args: [],
    );
  }

  /// `Can`
  String get brand_can {
    return Intl.message(
      'Can',
      name: 'brand_can',
      desc: 'Brand label for Can',
      args: [],
    );
  }

  /// `Peacock`
  String get brand_peacock {
    return Intl.message(
      'Peacock',
      name: 'brand_peacock',
      desc: 'Brand label for Peacock',
      args: [],
    );
  }

  /// `Sheba`
  String get brand_sheba {
    return Intl.message(
      'Sheba',
      name: 'brand_sheba',
      desc: 'Brand label for Sheba',
      args: [],
    );
  }

  /// `Jogger`
  String get brand_jogger {
    return Intl.message(
      'Jogger',
      name: 'brand_jogger',
      desc: 'Brand label for Jogger',
      args: [],
    );
  }

  /// `Rock Lander`
  String get brand_rock_lander {
    return Intl.message(
      'Rock Lander',
      name: 'brand_rock_lander',
      desc: 'Brand label for Rock Lander',
      args: [],
    );
  }

  /// `Every Safe`
  String get brand_every_safe {
    return Intl.message(
      'Every Safe',
      name: 'brand_every_safe',
      desc: 'Brand label for Every Safe',
      args: [],
    );
  }

  /// `Cat`
  String get brand_cat {
    return Intl.message(
      'Cat',
      name: 'brand_cat',
      desc: 'Brand label for Cat',
      args: [],
    );
  }

  /// `Heckel`
  String get brand_heckel {
    return Intl.message(
      'Heckel',
      name: 'brand_heckel',
      desc: 'Brand label for Heckel',
      args: [],
    );
  }

  /// `Global`
  String get brand_global {
    return Intl.message(
      'Global',
      name: 'brand_global',
      desc: 'Brand label for Global',
      args: [],
    );
  }

  /// `Patterned`
  String get brand_patterned {
    return Intl.message(
      'Patterned',
      name: 'brand_patterned',
      desc: 'Brand label for Patterned',
      args: [],
    );
  }

  /// `Ranger`
  String get brand_ranger {
    return Intl.message(
      'Ranger',
      name: 'brand_ranger',
      desc: 'Brand label for Ranger',
      args: [],
    );
  }

  /// `Delta`
  String get brand_delta {
    return Intl.message(
      'Delta',
      name: 'brand_delta',
      desc: 'Brand label for Delta',
      args: [],
    );
  }

  /// `Spiked`
  String get brand_spiked {
    return Intl.message(
      'Spiked',
      name: 'brand_spiked',
      desc: 'Brand label for Spiked',
      args: [],
    );
  }

  /// `Dalcha Timber`
  String get brand_dalcha_timber {
    return Intl.message(
      'Dalcha Timber',
      name: 'brand_dalcha_timber',
      desc: 'Brand label for Dalcha Timber',
      args: [],
    );
  }

  /// `Swat Timber`
  String get brand_swat_timber {
    return Intl.message(
      'Swat Timber',
      name: 'brand_swat_timber',
      desc: 'Brand label for Swat Timber',
      args: [],
    );
  }

  /// `Kangaroo`
  String get brand_kangaroo {
    return Intl.message(
      'Kangaroo',
      name: 'brand_kangaroo',
      desc: 'Brand label for Kangaroo',
      args: [],
    );
  }

  /// `Salam`
  String get brand_salam {
    return Intl.message(
      'Salam',
      name: 'brand_salam',
      desc: 'Brand label for Salam',
      args: [],
    );
  }

  /// `Abajifar`
  String get brand_abajifar {
    return Intl.message(
      'Abajifar',
      name: 'brand_abajifar',
      desc: 'Brand label for Abajifar',
      args: [],
    );
  }

  /// `Safety`
  String get brand_safety {
    return Intl.message(
      'Safety',
      name: 'brand_safety',
      desc: 'Brand label for Safety',
      args: [],
    );
  }

  /// `Work`
  String get brand_work {
    return Intl.message(
      'Work',
      name: 'brand_work',
      desc: 'Brand label for Work',
      args: [],
    );
  }

  /// `Tuta`
  String get category_tuta {
    return Intl.message(
      'Tuta',
      name: 'category_tuta',
      desc: 'Category label for Tuta',
      args: [],
    );
  }

  /// `Safety Tuta`
  String get subcategory_safety_tuta {
    return Intl.message(
      'Safety Tuta',
      name: 'subcategory_safety_tuta',
      desc: 'Subcategory label for Safety Tuta',
      args: [],
    );
  }

  /// `Coat`
  String get brand_coat {
    return Intl.message(
      'Coat',
      name: 'brand_coat',
      desc: 'Brand label for Coat',
      args: [],
    );
  }

  /// `Pants`
  String get brand_pants {
    return Intl.message(
      'Pants',
      name: 'brand_pants',
      desc: 'Brand label for Pants',
      args: [],
    );
  }

  /// `Full`
  String get brand_full {
    return Intl.message(
      'Full',
      name: 'brand_full',
      desc: 'Brand label for Full',
      args: [],
    );
  }

  /// `Airline`
  String get brand_airline {
    return Intl.message(
      'Airline',
      name: 'brand_airline',
      desc: 'Brand label for Airline',
      args: [],
    );
  }

  /// `Khaki`
  String get subcategory_khaki {
    return Intl.message(
      'Khaki',
      name: 'subcategory_khaki',
      desc: 'Subcategory label for Khaki',
      args: [],
    );
  }

  /// `Dalcha`
  String get brand_dalcha {
    return Intl.message(
      'Dalcha',
      name: 'brand_dalcha',
      desc: 'Brand label for Dalcha',
      args: [],
    );
  }

  /// `Printed`
  String get subcategory_printed {
    return Intl.message(
      'Printed',
      name: 'subcategory_printed',
      desc: 'Subcategory label for Printed',
      args: [],
    );
  }

  /// `Khaki`
  String get brand_khaki {
    return Intl.message(
      'Khaki',
      name: 'brand_khaki',
      desc: 'Brand label for Khaki',
      args: [],
    );
  }

  /// `Tetran`
  String get brand_tetran {
    return Intl.message(
      'Tetran',
      name: 'brand_tetran',
      desc: 'Brand label for Tetran',
      args: [],
    );
  }

  /// `Crocs`
  String get brand_crocs {
    return Intl.message(
      'Crocs',
      name: 'brand_crocs',
      desc: 'Brand label for Crocs',
      args: [],
    );
  }

  /// `Teteran`
  String get subcategory_teteran {
    return Intl.message(
      'Teteran',
      name: 'subcategory_teteran',
      desc: 'Subcategory label for Teteran',
      args: [],
    );
  }

  /// `Teteran`
  String get brand_teteran {
    return Intl.message(
      'Teteran',
      name: 'brand_teteran',
      desc: 'Brand label for Teteran',
      args: [],
    );
  }

  /// `Manchini`
  String get subcategory_manchini {
    return Intl.message(
      'Manchini',
      name: 'subcategory_manchini',
      desc: 'Subcategory label for Manchini',
      args: [],
    );
  }

  /// `Manchini`
  String get brand_manchini {
    return Intl.message(
      'Manchini',
      name: 'brand_manchini',
      desc: 'Brand label for Manchini',
      args: [],
    );
  }

  /// `Ventilated`
  String get subcategory_ventilated {
    return Intl.message(
      'Ventilated',
      name: 'subcategory_ventilated',
      desc: 'Subcategory label for Ventilated',
      args: [],
    );
  }

  /// `Ventilated`
  String get brand_ventilated {
    return Intl.message(
      'Ventilated',
      name: 'brand_ventilated',
      desc: 'Brand label for Ventilated',
      args: [],
    );
  }

  /// `Gown`
  String get category_gown {
    return Intl.message(
      'Gown',
      name: 'category_gown',
      desc: 'Category label for Gown',
      args: [],
    );
  }

  /// `Hospitality Gown`
  String get subcategory_hospitality_gown {
    return Intl.message(
      'Hospitality Gown',
      name: 'subcategory_hospitality_gown',
      desc: 'Subcategory label for Hospitality Gown',
      args: [],
    );
  }

  /// `Hospitality Gown`
  String get brand_hospitality_gown {
    return Intl.message(
      'Hospitality Gown',
      name: 'brand_hospitality_gown',
      desc: 'Brand label for Hospitality Gown',
      args: [],
    );
  }

  /// `Gloves`
  String get category_gloves {
    return Intl.message(
      'Gloves',
      name: 'category_gloves',
      desc: 'Category label for Gloves',
      args: [],
    );
  }

  /// `Leather Gloves`
  String get subcategory_leather_gloves {
    return Intl.message(
      'Leather Gloves',
      name: 'subcategory_leather_gloves',
      desc: 'Subcategory label for Leather Gloves',
      args: [],
    );
  }

  /// `Leather Gloves`
  String get brand_leather_gloves {
    return Intl.message(
      'Leather Gloves',
      name: 'brand_leather_gloves',
      desc: 'Brand label for Leather Gloves',
      args: [],
    );
  }

  /// `Laser Gloves`
  String get subcategory_laser_gloves {
    return Intl.message(
      'Laser Gloves',
      name: 'subcategory_laser_gloves',
      desc: 'Subcategory label for Laser Gloves',
      args: [],
    );
  }

  /// `Laser Gloves`
  String get brand_laser_gloves {
    return Intl.message(
      'Laser Gloves',
      name: 'brand_laser_gloves',
      desc: 'Brand label for Laser Gloves',
      args: [],
    );
  }

  /// `Knitted Gloves`
  String get subcategory_knitted_gloves {
    return Intl.message(
      'Knitted Gloves',
      name: 'subcategory_knitted_gloves',
      desc: 'Subcategory label for Knitted Gloves',
      args: [],
    );
  }

  /// `Knitted Gloves`
  String get brand_knitted_gloves {
    return Intl.message(
      'Knitted Gloves',
      name: 'brand_knitted_gloves',
      desc: 'Brand label for Knitted Gloves',
      args: [],
    );
  }

  /// `Plastic Gloves`
  String get subcategory_plastic_gloves {
    return Intl.message(
      'Plastic Gloves',
      name: 'subcategory_plastic_gloves',
      desc: 'Subcategory label for Plastic Gloves',
      args: [],
    );
  }

  /// `Plastic Gloves`
  String get brand_plastic_gloves {
    return Intl.message(
      'Plastic Gloves',
      name: 'brand_plastic_gloves',
      desc: 'Brand label for Plastic Gloves',
      args: [],
    );
  }

  /// `Coat`
  String get category_coat {
    return Intl.message(
      'Coat',
      name: 'category_coat',
      desc: 'Category label for Coat',
      args: [],
    );
  }

  /// `Wool Coat`
  String get subcategory_wool_coat {
    return Intl.message(
      'Wool Coat',
      name: 'subcategory_wool_coat',
      desc: 'Subcategory label for Wool Coat',
      args: [],
    );
  }

  /// `Wool Coat`
  String get brand_wool_coat {
    return Intl.message(
      'Wool Coat',
      name: 'brand_wool_coat',
      desc: 'Brand label for Wool Coat',
      args: [],
    );
  }

  /// `Fabric Coat`
  String get subcategory_fabric_coat {
    return Intl.message(
      'Fabric Coat',
      name: 'subcategory_fabric_coat',
      desc: 'Subcategory label for Fabric Coat',
      args: [],
    );
  }

  /// `Fabric Coat`
  String get brand_fabric_coat {
    return Intl.message(
      'Fabric Coat',
      name: 'brand_fabric_coat',
      desc: 'Brand label for Fabric Coat',
      args: [],
    );
  }

  /// `Local Coat`
  String get subcategory_local_coat {
    return Intl.message(
      'Local Coat',
      name: 'subcategory_local_coat',
      desc: 'Subcategory label for Local Coat',
      args: [],
    );
  }

  /// `Local Coat`
  String get brand_local_coat {
    return Intl.message(
      'Local Coat',
      name: 'brand_local_coat',
      desc: 'Brand label for Local Coat',
      args: [],
    );
  }

  /// `Reflective`
  String get category_reflective {
    return Intl.message(
      'Reflective',
      name: 'category_reflective',
      desc: 'Category label for Reflective',
      args: [],
    );
  }

  /// `Imported`
  String get subcategory_imported {
    return Intl.message(
      'Imported',
      name: 'subcategory_imported',
      desc: 'Subcategory label for Imported',
      args: [],
    );
  }

  /// `Imported`
  String get brand_imported {
    return Intl.message(
      'Imported',
      name: 'brand_imported',
      desc: 'Brand label for Imported',
      args: [],
    );
  }

  /// `Local`
  String get subcategory_local {
    return Intl.message(
      'Local',
      name: 'subcategory_local',
      desc: 'Subcategory label for Local',
      args: [],
    );
  }

  /// `Local`
  String get brand_local {
    return Intl.message(
      'Local',
      name: 'brand_local',
      desc: 'Brand label for Local',
      args: [],
    );
  }

  /// `Rainwear`
  String get category_rainwear {
    return Intl.message(
      'Rainwear',
      name: 'category_rainwear',
      desc: 'Category label for Rainwear',
      args: [],
    );
  }

  /// `Coat and Pants`
  String get subcategory_coat_and_pants {
    return Intl.message(
      'Coat and Pants',
      name: 'subcategory_coat_and_pants',
      desc: 'Subcategory label for Coat and Pants',
      args: [],
    );
  }

  /// `Coat and Pants`
  String get brand_coat_and_pants {
    return Intl.message(
      'Coat and Pants',
      name: 'brand_coat_and_pants',
      desc: 'Brand label for Coat and Pants',
      args: [],
    );
  }

  /// `Full Rainwear`
  String get subcategory_full_rainwear {
    return Intl.message(
      'Full Rainwear',
      name: 'subcategory_full_rainwear',
      desc: 'Subcategory label for Full Rainwear',
      args: [],
    );
  }

  /// `Full Rainwear`
  String get brand_full_rainwear {
    return Intl.message(
      'Full Rainwear',
      name: 'brand_full_rainwear',
      desc: 'Brand label for Full Rainwear',
      args: [],
    );
  }

  /// `Thin Rainwear`
  String get subcategory_thin_rainwear {
    return Intl.message(
      'Thin Rainwear',
      name: 'subcategory_thin_rainwear',
      desc: 'Subcategory label for Thin Rainwear',
      args: [],
    );
  }

  /// `Thin Rainwear`
  String get brand_thin_rainwear {
    return Intl.message(
      'Thin Rainwear',
      name: 'brand_thin_rainwear',
      desc: 'Brand label for Thin Rainwear',
      args: [],
    );
  }

  /// `Coat and Pants`
  String get category_coat_and_pants {
    return Intl.message(
      'Coat and Pants',
      name: 'category_coat_and_pants',
      desc: 'Category label for Coat and Pants',
      args: [],
    );
  }

  /// `Reflective`
  String get subcategory_reflective {
    return Intl.message(
      'Reflective',
      name: 'subcategory_reflective',
      desc: 'Subcategory label for Reflective',
      args: [],
    );
  }

  /// `Reflective`
  String get brand_reflective {
    return Intl.message(
      'Reflective',
      name: 'brand_reflective',
      desc: 'Brand label for Reflective',
      args: [],
    );
  }

  /// `Match`
  String get subcategory_match {
    return Intl.message(
      'Match',
      name: 'subcategory_match',
      desc: 'Subcategory label for Match',
      args: [],
    );
  }

  /// `Match`
  String get brand_match {
    return Intl.message(
      'Match',
      name: 'brand_match',
      desc: 'Brand label for Match',
      args: [],
    );
  }

  /// `Shirt and Pants`
  String get subcategory_shirt_and_pants {
    return Intl.message(
      'Shirt and Pants',
      name: 'subcategory_shirt_and_pants',
      desc: 'Subcategory label for Shirt and Pants',
      args: [],
    );
  }

  /// `Shirt and Pants`
  String get brand_shirt_and_pants {
    return Intl.message(
      'Shirt and Pants',
      name: 'brand_shirt_and_pants',
      desc: 'Brand label for Shirt and Pants',
      args: [],
    );
  }

  /// `Wallet`
  String get category_wallet {
    return Intl.message(
      'Wallet',
      name: 'category_wallet',
      desc: 'Category label for Wallet',
      args: [],
    );
  }

  /// `Deep`
  String get subcategory_deep {
    return Intl.message(
      'Deep',
      name: 'subcategory_deep',
      desc: 'Subcategory label for Deep',
      args: [],
    );
  }

  /// `Deep`
  String get brand_deep {
    return Intl.message(
      'Deep',
      name: 'brand_deep',
      desc: 'Brand label for Deep',
      args: [],
    );
  }

  /// `Front and Back`
  String get subcategory_front_and_back {
    return Intl.message(
      'Front and Back',
      name: 'subcategory_front_and_back',
      desc: 'Subcategory label for Front and Back',
      args: [],
    );
  }

  /// `Front and Back`
  String get brand_front_and_back {
    return Intl.message(
      'Front and Back',
      name: 'brand_front_and_back',
      desc: 'Brand label for Front and Back',
      args: [],
    );
  }

  /// `With Coin Pocket`
  String get subcategory_with_coin_pocket {
    return Intl.message(
      'With Coin Pocket',
      name: 'subcategory_with_coin_pocket',
      desc: 'Subcategory label for With Coin Pocket',
      args: [],
    );
  }

  /// `With Coin Pocket`
  String get brand_with_coin_pocket {
    return Intl.message(
      'With Coin Pocket',
      name: 'brand_with_coin_pocket',
      desc: 'Brand label for With Coin Pocket',
      args: [],
    );
  }

  /// `Cap`
  String get category_cap {
    return Intl.message(
      'Cap',
      name: 'category_cap',
      desc: 'Category label for Cap',
      args: [],
    );
  }

  /// `Kitchen Cap`
  String get subcategory_kitchen_cap {
    return Intl.message(
      'Kitchen Cap',
      name: 'subcategory_kitchen_cap',
      desc: 'Subcategory label for Kitchen Cap',
      args: [],
    );
  }

  /// `With Net`
  String get brand_with_net {
    return Intl.message(
      'With Net',
      name: 'brand_with_net',
      desc: 'Brand label for With Net',
      args: [],
    );
  }

  /// `Without Net`
  String get brand_without_net {
    return Intl.message(
      'Without Net',
      name: 'brand_without_net',
      desc: 'Brand label for Without Net',
      args: [],
    );
  }

  /// `Chef Cap`
  String get brand_chef_cap {
    return Intl.message(
      'Chef Cap',
      name: 'brand_chef_cap',
      desc: 'Brand label for Chef Cap',
      args: [],
    );
  }

  /// `Hat`
  String get subcategory_hat {
    return Intl.message(
      'Hat',
      name: 'subcategory_hat',
      desc: 'Subcategory label for Hat',
      args: [],
    );
  }

  /// `Selene`
  String get brand_selene {
    return Intl.message(
      'Selene',
      name: 'brand_selene',
      desc: 'Brand label for Selene',
      args: [],
    );
  }

  /// `Fabric`
  String get brand_fabric {
    return Intl.message(
      'Fabric',
      name: 'brand_fabric',
      desc: 'Brand label for Fabric',
      args: [],
    );
  }

  /// `Helmet`
  String get subcategory_helmet {
    return Intl.message(
      'Helmet',
      name: 'subcategory_helmet',
      desc: 'Subcategory label for Helmet',
      args: [],
    );
  }

  /// `Helmet`
  String get brand_helmet {
    return Intl.message(
      'Helmet',
      name: 'brand_helmet',
      desc: 'Brand label for Helmet',
      args: [],
    );
  }

  /// `Normal Cap`
  String get subcategory_normal_cap {
    return Intl.message(
      'Normal Cap',
      name: 'subcategory_normal_cap',
      desc: 'Subcategory label for Normal Cap',
      args: [],
    );
  }

  /// `Normal Cap`
  String get brand_normal_cap {
    return Intl.message(
      'Normal Cap',
      name: 'brand_normal_cap',
      desc: 'Brand label for Normal Cap',
      args: [],
    );
  }

  /// `Shirt`
  String get category_shirt {
    return Intl.message(
      'Shirt',
      name: 'category_shirt',
      desc: 'Category label for Shirt',
      args: [],
    );
  }

  /// `Shirt`
  String get subcategory_shirt {
    return Intl.message(
      'Shirt',
      name: 'subcategory_shirt',
      desc: 'Subcategory label for Shirt',
      args: [],
    );
  }

  /// `White`
  String get brand_white {
    return Intl.message(
      'White',
      name: 'brand_white',
      desc: 'Brand label for White',
      args: [],
    );
  }

  /// `Black`
  String get brand_black {
    return Intl.message(
      'Black',
      name: 'brand_black',
      desc: 'Brand label for Black',
      args: [],
    );
  }

  /// `Blue`
  String get brand_blue {
    return Intl.message(
      'Blue',
      name: 'brand_blue',
      desc: 'Brand label for Blue',
      args: [],
    );
  }

  /// `Mask`
  String get category_mask {
    return Intl.message(
      'Mask',
      name: 'category_mask',
      desc: 'Category label for Mask',
      args: [],
    );
  }

  /// `Chemical Mask`
  String get subcategory_chemical_mask {
    return Intl.message(
      'Chemical Mask',
      name: 'subcategory_chemical_mask',
      desc: 'Subcategory label for Chemical Mask',
      args: [],
    );
  }

  /// `Chemical Mask`
  String get brand_chemical_mask {
    return Intl.message(
      'Chemical Mask',
      name: 'brand_chemical_mask',
      desc: 'Brand label for Chemical Mask',
      args: [],
    );
  }

  /// `Surgical Mask`
  String get subcategory_surgical_mask {
    return Intl.message(
      'Surgical Mask',
      name: 'subcategory_surgical_mask',
      desc: 'Subcategory label for Surgical Mask',
      args: [],
    );
  }

  /// `Surgical Mask`
  String get brand_surgical_mask {
    return Intl.message(
      'Surgical Mask',
      name: 'brand_surgical_mask',
      desc: 'Brand label for Surgical Mask',
      args: [],
    );
  }

  /// `Normal Mask`
  String get subcategory_normal_mask {
    return Intl.message(
      'Normal Mask',
      name: 'subcategory_normal_mask',
      desc: 'Subcategory label for Normal Mask',
      args: [],
    );
  }

  /// `Normal Mask`
  String get brand_normal_mask {
    return Intl.message(
      'Normal Mask',
      name: 'brand_normal_mask',
      desc: 'Brand label for Normal Mask',
      args: [],
    );
  }

  /// `Jacket`
  String get category_jacket {
    return Intl.message(
      'Jacket',
      name: 'category_jacket',
      desc: 'Category label for Jacket',
      args: [],
    );
  }

  /// `Safety Jacket`
  String get subcategory_safety_jacket {
    return Intl.message(
      'Safety Jacket',
      name: 'subcategory_safety_jacket',
      desc: 'Subcategory label for Safety Jacket',
      args: [],
    );
  }

  /// `Safety Jacket`
  String get brand_safety_jacket {
    return Intl.message(
      'Safety Jacket',
      name: 'brand_safety_jacket',
      desc: 'Brand label for Safety Jacket',
      args: [],
    );
  }

  /// `Reflective Jacket`
  String get subcategory_reflective_jacket {
    return Intl.message(
      'Reflective Jacket',
      name: 'subcategory_reflective_jacket',
      desc: 'Subcategory label for Reflective Jacket',
      args: [],
    );
  }

  /// `Reflective Jacket`
  String get brand_reflective_jacket {
    return Intl.message(
      'Reflective Jacket',
      name: 'brand_reflective_jacket',
      desc: 'Brand label for Reflective Jacket',
      args: [],
    );
  }

  /// `Normal Jacket`
  String get subcategory_normal_jacket {
    return Intl.message(
      'Normal Jacket',
      name: 'subcategory_normal_jacket',
      desc: 'Subcategory label for Normal Jacket',
      args: [],
    );
  }

  /// `Normal Jacket`
  String get brand_normal_jacket {
    return Intl.message(
      'Normal Jacket',
      name: 'brand_normal_jacket',
      desc: 'Brand label for Normal Jacket',
      args: [],
    );
  }

  /// `Belt`
  String get category_belt {
    return Intl.message(
      'Belt',
      name: 'category_belt',
      desc: 'Category label for Belt',
      args: [],
    );
  }

  /// `Leather Belt`
  String get subcategory_leather_belt {
    return Intl.message(
      'Leather Belt',
      name: 'subcategory_leather_belt',
      desc: 'Subcategory label for Leather Belt',
      args: [],
    );
  }

  /// `Leather Belt`
  String get brand_leather_belt {
    return Intl.message(
      'Leather Belt',
      name: 'brand_leather_belt',
      desc: 'Brand label for Leather Belt',
      args: [],
    );
  }

  /// `Canvas Belt`
  String get subcategory_canvas_belt {
    return Intl.message(
      'Canvas Belt',
      name: 'subcategory_canvas_belt',
      desc: 'Subcategory label for Canvas Belt',
      args: [],
    );
  }

  /// `Canvas Belt`
  String get brand_canvas_belt {
    return Intl.message(
      'Canvas Belt',
      name: 'brand_canvas_belt',
      desc: 'Brand label for Canvas Belt',
      args: [],
    );
  }

  /// `Socks`
  String get category_socks {
    return Intl.message(
      'Socks',
      name: 'category_socks',
      desc: 'Category label for Socks',
      args: [],
    );
  }

  /// `Long Socks`
  String get subcategory_long_socks {
    return Intl.message(
      'Long Socks',
      name: 'subcategory_long_socks',
      desc: 'Subcategory label for Long Socks',
      args: [],
    );
  }

  /// `Long Socks`
  String get brand_long_socks {
    return Intl.message(
      'Long Socks',
      name: 'brand_long_socks',
      desc: 'Brand label for Long Socks',
      args: [],
    );
  }

  /// `Short Socks`
  String get subcategory_short_socks {
    return Intl.message(
      'Short Socks',
      name: 'subcategory_short_socks',
      desc: 'Subcategory label for Short Socks',
      args: [],
    );
  }

  /// `Short Socks`
  String get brand_short_socks {
    return Intl.message(
      'Short Socks',
      name: 'brand_short_socks',
      desc: 'Brand label for Short Socks',
      args: [],
    );
  }

  /// `Glasses`
  String get category_glasses {
    return Intl.message(
      'Glasses',
      name: 'category_glasses',
      desc: 'Category label for Glasses',
      args: [],
    );
  }

  /// `Welding Glasses`
  String get subcategory_welding_glasses {
    return Intl.message(
      'Welding Glasses',
      name: 'subcategory_welding_glasses',
      desc: 'Subcategory label for Welding Glasses',
      args: [],
    );
  }

  /// `Welding Glasses`
  String get brand_welding_glasses {
    return Intl.message(
      'Welding Glasses',
      name: 'brand_welding_glasses',
      desc: 'Brand label for Welding Glasses',
      args: [],
    );
  }

  /// `Dust Glasses`
  String get subcategory_dust_glasses {
    return Intl.message(
      'Dust Glasses',
      name: 'subcategory_dust_glasses',
      desc: 'Subcategory label for Dust Glasses',
      args: [],
    );
  }

  /// `Dust Glasses`
  String get brand_dust_glasses {
    return Intl.message(
      'Dust Glasses',
      name: 'brand_dust_glasses',
      desc: 'Brand label for Dust Glasses',
      args: [],
    );
  }

  /// `Sunglasses`
  String get subcategory_sunglasses {
    return Intl.message(
      'Sunglasses',
      name: 'subcategory_sunglasses',
      desc: 'Subcategory label for Sunglasses',
      args: [],
    );
  }

  /// `Sunglasses`
  String get brand_sunglasses {
    return Intl.message(
      'Sunglasses',
      name: 'brand_sunglasses',
      desc: 'Brand label for Sunglasses',
      args: [],
    );
  }

  /// `Red`
  String get itemColorRed {
    return Intl.message(
      'Red',
      name: 'itemColorRed',
      desc: 'Color label for Red',
      args: [],
    );
  }

  /// `Blue`
  String get itemColorBlue {
    return Intl.message(
      'Blue',
      name: 'itemColorBlue',
      desc: 'Color label for Blue',
      args: [],
    );
  }

  /// `Yellow`
  String get itemColorYellow {
    return Intl.message(
      'Yellow',
      name: 'itemColorYellow',
      desc: 'Color label for Yellow',
      args: [],
    );
  }

  /// `Black`
  String get itemColorBlack {
    return Intl.message(
      'Black',
      name: 'itemColorBlack',
      desc: 'Color label for Black',
      args: [],
    );
  }

  /// `White`
  String get itemColorWhite {
    return Intl.message(
      'White',
      name: 'itemColorWhite',
      desc: 'Color label for White',
      args: [],
    );
  }

  /// `Green`
  String get itemColorGreen {
    return Intl.message(
      'Green',
      name: 'itemColorGreen',
      desc: 'Color label for Green',
      args: [],
    );
  }

  /// `Orange`
  String get itemColorOrange {
    return Intl.message(
      'Orange',
      name: 'itemColorOrange',
      desc: 'Color label for Orange',
      args: [],
    );
  }

  /// `Brown`
  String get itemColorBrown {
    return Intl.message(
      'Brown',
      name: 'itemColorBrown',
      desc: 'Color label for Brown',
      args: [],
    );
  }

  /// `Grey`
  String get itemColorGrey {
    return Intl.message(
      'Grey',
      name: 'itemColorGrey',
      desc: 'Color label for Grey',
      args: [],
    );
  }

  /// `Pink`
  String get itemColorPink {
    return Intl.message(
      'Pink',
      name: 'itemColorPink',
      desc: 'Color label for Pink',
      args: [],
    );
  }

  /// `Purple`
  String get itemColorPurple {
    return Intl.message(
      'Purple',
      name: 'itemColorPurple',
      desc: 'Color label for Purple',
      args: [],
    );
  }

  /// `Silver`
  String get itemColorSilver {
    return Intl.message(
      'Silver',
      name: 'itemColorSilver',
      desc: 'Color label for Silver',
      args: [],
    );
  }

  /// `Gold`
  String get itemColorGold {
    return Intl.message(
      'Gold',
      name: 'itemColorGold',
      desc: 'Color label for Gold',
      args: [],
    );
  }

  /// `Khaki`
  String get itemColorKaki {
    return Intl.message(
      'Khaki',
      name: 'itemColorKaki',
      desc: 'Color label for Khaki',
      args: [],
    );
  }

  /// `Other`
  String get itemColorOther {
    return Intl.message(
      'Other',
      name: 'itemColorOther',
      desc: 'Color label for Other',
      args: [],
    );
  }

  /// `Cash`
  String get paymentWithCash {
    return Intl.message(
      'Cash',
      name: 'paymentWithCash',
      desc: 'Lable for payment method.',
      args: [],
    );
  }

  /// `Check book`
  String get paymentWithCheck {
    return Intl.message(
      'Check book',
      name: 'paymentWithCheck',
      desc: 'Lable for payment method.',
      args: [],
    );
  }

  /// `Credit`
  String get creditNoPayment {
    return Intl.message(
      'Credit',
      name: 'creditNoPayment',
      desc: 'Lable for payment method.',
      args: [],
    );
  }

  /// `barter`
  String get paymentInKind {
    return Intl.message(
      'barter',
      name: 'paymentInKind',
      desc: 'Lable for payment method.',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get paymentWithBankTransfer {
    return Intl.message(
      'Bank Transfer',
      name: 'paymentWithBankTransfer',
      desc: 'Lable for payment method.',
      args: [],
    );
  }

  /// `Purchase Items`
  String get purchase_items {
    return Intl.message(
      'Purchase Items',
      name: 'purchase_items',
      desc: 'Title for the purchase items screen.',
      args: [],
    );
  }

  /// `Filter Items`
  String get filter_items {
    return Intl.message(
      'Filter Items',
      name: 'filter_items',
      desc: 'Tooltip for the filter button',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: 'Title for the filters section.',
      args: [],
    );
  }

  /// `Subcategory`
  String get subcategory {
    return Intl.message(
      'Subcategory',
      name: 'subcategory',
      desc: 'Label for the subcategory.',
      args: [],
    );
  }

  /// `Subcategory 2`
  String get subcategory2 {
    return Intl.message(
      'Subcategory 2',
      name: 'subcategory2',
      desc: 'Label for the second subcategory .',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: 'Label for the color .',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: 'Label for the size .',
      args: [],
    );
  }

  /// `Shoes Size`
  String get shoe_size {
    return Intl.message(
      'Shoes Size',
      name: 'shoe_size',
      desc: 'Label for the shoes size',
      args: [],
    );
  }

  /// `Low Stock`
  String get low_stock {
    return Intl.message(
      'Low Stock',
      name: 'low_stock',
      desc: 'Label for the low stock.',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message('None', name: 'none', desc: 'Label for none', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: 'Label for done', args: []);
  }

  /// `No items found.`
  String get no_items_found {
    return Intl.message(
      'No items found.',
      name: 'no_items_found',
      desc: 'Message shown when no items are found.',
      args: [],
    );
  }

  /// `Sales Items`
  String get sales_items {
    return Intl.message(
      'Sales Items',
      name: 'sales_items',
      desc: 'Title for the sales items screen',
      args: [],
    );
  }

  /// `Unit`
  String get unit {
    return Intl.message(
      'Unit',
      name: 'unit',
      desc: 'Label for unit filter',
      args: [],
    );
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: 'Label for product name filter',
      args: [],
    );
  }

  /// `Profitable Items`
  String get profitable_items {
    return Intl.message(
      'Profitable Items',
      name: 'profitable_items',
      desc: 'Label for profitable items filter',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: 'Fallback label for unknown product name',
      args: [],
    );
  }

  /// `Purchases`
  String get purchases {
    return Intl.message(
      'Purchases',
      name: 'purchases',
      desc: 'Label for Purchases',
      args: [],
    );
  }

  /// `Purchase Date`
  String get purchase_date {
    return Intl.message(
      'Purchase Date',
      name: 'purchase_date',
      desc: 'Label for the date of the purchase',
      args: [],
    );
  }

  /// `Show Additional Purchase Fields`
  String get show_additional_purchase_fields {
    return Intl.message(
      'Show Additional Purchase Fields',
      name: 'show_additional_purchase_fields',
      desc: 'Label for toggling additional purchase fields',
      args: [],
    );
  }

  /// `Invoice Number`
  String get invoice_number {
    return Intl.message(
      'Invoice Number',
      name: 'invoice_number',
      desc: 'Label for the invoice number of the purchase',
      args: [],
    );
  }

  /// `Vendor Name`
  String get vendor_name {
    return Intl.message(
      'Vendor Name',
      name: 'vendor_name',
      desc: 'Label for the vendor name of the purchase',
      args: [],
    );
  }

  /// `Buy Tax`
  String get buy_tax {
    return Intl.message(
      'Buy Tax',
      name: 'buy_tax',
      desc: 'Label for the tax associated with the purchase',
      args: [],
    );
  }

  /// `Paid Amount`
  String get paid_amount {
    return Intl.message(
      'Paid Amount',
      name: 'paid_amount',
      desc: 'Label for the amount paid for the purchase',
      args: [],
    );
  }

  /// `Cancel Add Item`
  String get cancel_add_item {
    return Intl.message(
      'Cancel Add Item',
      name: 'cancel_add_item',
      desc: 'Label for canceling item addition',
      args: [],
    );
  }

  /// `Add Item`
  String get add_item {
    return Intl.message(
      'Add Item',
      name: 'add_item',
      desc: 'Label for adding a new item',
      args: [],
    );
  }

  /// `Cancel Add Expense`
  String get cancel_add_expense {
    return Intl.message(
      'Cancel Add Expense',
      name: 'cancel_add_expense',
      desc: 'Label for canceling expense addition',
      args: [],
    );
  }

  /// `No items added`
  String get no_items {
    return Intl.message(
      'No items added',
      name: 'no_items',
      desc: 'Message when no items are added',
      args: [],
    );
  }

  /// `Minimum Stock`
  String get min_stock {
    return Intl.message(
      'Minimum Stock',
      name: 'min_stock',
      desc: 'Label for item minimum stock',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: 'Label for item discount',
      args: [],
    );
  }

  /// `Item Tax`
  String get item_tax {
    return Intl.message(
      'Item Tax',
      name: 'item_tax',
      desc: 'Label for item tax',
      args: [],
    );
  }

  /// `Stock Location`
  String get stock_location {
    return Intl.message(
      'Stock Location',
      name: 'stock_location',
      desc: 'Label for item stock location',
      args: [],
    );
  }

  /// `Stock Reference`
  String get stock_ref {
    return Intl.message(
      'Stock Reference',
      name: 'stock_ref',
      desc: 'Label for item stock reference',
      args: [],
    );
  }

  /// `Image Receipt`
  String get image_receipt {
    return Intl.message(
      'Image Receipt',
      name: 'image_receipt',
      desc: 'Label for expense receipt image',
      args: [],
    );
  }

  /// `Payment Method is required`
  String get payment_method_required {
    return Intl.message(
      'Payment Method is required',
      name: 'payment_method_required',
      desc: 'Error message when payment method is not selected',
      args: [],
    );
  }

  /// `Valid quantity required`
  String get quantity_required {
    return Intl.message(
      'Valid quantity required',
      name: 'quantity_required',
      desc: 'Error message when quantity is empty or invalid',
      args: [],
    );
  }

  /// `Valid unit cost required`
  String get unit_cost_required {
    return Intl.message(
      'Valid unit cost required',
      name: 'unit_cost_required',
      desc: 'Error message when unit cost is empty or invalid',
      args: [],
    );
  }

  /// `Color is required`
  String get color_required {
    return Intl.message(
      'Color is required',
      name: 'color_required',
      desc: 'Error message when color is not selected',
      args: [],
    );
  }

  /// `Valid shoe size required`
  String get shoe_size_required {
    return Intl.message(
      'Valid shoe size required',
      name: 'shoe_size_required',
      desc: 'Error message when shoe size is empty or invalid',
      args: [],
    );
  }

  /// `Size is required`
  String get size_required {
    return Intl.message(
      'Size is required',
      name: 'size_required',
      desc: 'Error message when size is not selected',
      args: [],
    );
  }

  /// `Valid amount required`
  String get amount_required {
    return Intl.message(
      'Valid amount required',
      name: 'amount_required',
      desc: 'Error message when expense amount is empty or invalid',
      args: [],
    );
  }

  /// `Tax cannot be negative`
  String get invalid_tax {
    return Intl.message(
      'Tax cannot be negative',
      name: 'invalid_tax',
      desc: 'Error message when tax is negative',
      args: [],
    );
  }

  /// `Discount cannot be negative`
  String get invalid_discount {
    return Intl.message(
      'Discount cannot be negative',
      name: 'invalid_discount',
      desc: 'Error message when discount is negative',
      args: [],
    );
  }

  /// `Minimum stock cannot be negative`
  String get invalid_min_stock {
    return Intl.message(
      'Minimum stock cannot be negative',
      name: 'invalid_min_stock',
      desc: 'Error message when minimum stock is negative',
      args: [],
    );
  }

  /// `Amount cannot be negative`
  String get invalid_amount {
    return Intl.message(
      'Amount cannot be negative',
      name: 'invalid_amount',
      desc: 'Error message when amount is negative',
      args: [],
    );
  }

  /// `Please fill`
  String get please_fill {
    return Intl.message(
      'Please fill',
      name: 'please_fill',
      desc: 'Message prompting to fill required fields',
      args: [],
    );
  }

  /// `ETB`
  String get birr {
    return Intl.message(
      'ETB',
      name: 'birr',
      desc: 'Label for ethiopian Money',
      args: [],
    );
  }

  /// `Group name is required`
  String get group_name_required {
    return Intl.message(
      'Group name is required',
      name: 'group_name_required',
      desc: 'Error when group name is empty',
      args: [],
    );
  }

  /// `Priority must be a valid number`
  String get priority_invalid {
    return Intl.message(
      'Priority must be a valid number',
      name: 'priority_invalid',
      desc: 'Error when priority is not a valid number',
      args: [],
    );
  }

  /// `Invalid category ID for update`
  String get invalid_category_id {
    return Intl.message(
      'Invalid category ID for update',
      name: 'invalid_category_id',
      desc: 'Error when category ID is invalid for update',
      args: [],
    );
  }

  /// `Failed to save category: {error}`
  String failed_save_category(Object error) {
    return Intl.message(
      'Failed to save category: $error',
      name: 'failed_save_category',
      desc: 'Error when category save fails with {error}',
      args: [error],
    );
  }

  /// `Date cannot be in the future`
  String get date_future_invalid {
    return Intl.message(
      'Date cannot be in the future',
      name: 'date_future_invalid',
      desc: 'Error when date is in the future',
      args: [],
    );
  }

  /// `Failed to update expenses date`
  String get failed_update_expenses {
    return Intl.message(
      'Failed to update expenses date',
      name: 'failed_update_expenses',
      desc: 'Error when updating expenses date fails',
      args: [],
    );
  }

  /// `Failed to add item: {error}`
  String failed_add_item(Object error) {
    return Intl.message(
      'Failed to add item: $error',
      name: 'failed_add_item',
      desc: 'Error when adding item fails with {error}',
      args: [error],
    );
  }

  /// `Unit cost must be positive`
  String get unit_cost_positive {
    return Intl.message(
      'Unit cost must be positive',
      name: 'unit_cost_positive',
      desc: 'Error when unit cost is not positive',
      args: [],
    );
  }

  /// `Discount must be positive`
  String get discount_positive {
    return Intl.message(
      'Discount must be positive',
      name: 'discount_positive',
      desc: 'Error when discount is not positive',
      args: [],
    );
  }

  /// `Item tax must be positive`
  String get item_tax_positive {
    return Intl.message(
      'Item tax must be positive',
      name: 'item_tax_positive',
      desc: 'Error when item tax is not positive',
      args: [],
    );
  }

  /// `Item not found`
  String get item_not_found {
    return Intl.message(
      'Item not found',
      name: 'item_not_found',
      desc: 'Error when item is not found',
      args: [],
    );
  }

  /// `Failed to update item: {error}`
  String failed_update_item(Object error) {
    return Intl.message(
      'Failed to update item: $error',
      name: 'failed_update_item',
      desc: 'Error when updating item fails with {error}',
      args: [error],
    );
  }

  /// `Failed to remove item: {error}`
  String failed_remove_item(Object error) {
    return Intl.message(
      'Failed to remove item: $error',
      name: 'failed_remove_item',
      desc: 'Error when removing item fails with {error}',
      args: [error],
    );
  }

  /// `Sale`
  String get sale {
    return Intl.message(
      'Sale',
      name: 'sale',
      desc: 'Label for sale field',
      args: [],
    );
  }

  /// `Amount must be positive`
  String get amount_positive {
    return Intl.message(
      'Amount must be positive',
      name: 'amount_positive',
      desc: 'Error when amount is not positive',
      args: [],
    );
  }

  /// `Payment method cannot be none`
  String get payment_method_not_none {
    return Intl.message(
      'Payment method cannot be none',
      name: 'payment_method_not_none',
      desc: 'Error when payment method is empty',
      args: [],
    );
  }

  /// `Tax cannot be negative`
  String get tax_negative {
    return Intl.message(
      'Tax cannot be negative',
      name: 'tax_negative',
      desc: 'Error when tax is negative',
      args: [],
    );
  }

  /// `Failed to add expense: {error}`
  String failed_add_expense(Object error) {
    return Intl.message(
      'Failed to add expense: $error',
      name: 'failed_add_expense',
      desc: 'Error when adding expense fails with {error}',
      args: [error],
    );
  }

  /// `Expense not found`
  String get expense_not_found {
    return Intl.message(
      'Expense not found',
      name: 'expense_not_found',
      desc: 'Error when expense is not found',
      args: [],
    );
  }

  /// `Form validation failed`
  String get form_validation_failed {
    return Intl.message(
      'Form validation failed',
      name: 'form_validation_failed',
      desc: 'Error when form validation fails',
      args: [],
    );
  }

  /// `At least one purchase item is required`
  String get purchase_item_required {
    return Intl.message(
      'At least one purchase item is required',
      name: 'purchase_item_required',
      desc: 'Error when no purchase item is provided',
      args: [],
    );
  }

  /// `Purchase payment method is required`
  String get purchase_payment_method_required {
    return Intl.message(
      'Purchase payment method is required',
      name: 'purchase_payment_method_required',
      desc: 'Error when purchase payment method is empty',
      args: [],
    );
  }

  /// `Purchase date must be after the year 2000`
  String get purchase_date_before_2000 {
    return Intl.message(
      'Purchase date must be after the year 2000',
      name: 'purchase_date_before_2000',
      desc: 'Error when purchase date is before 2000',
      args: [],
    );
  }

  /// `Buy tax cannot be negative`
  String get buy_tax_negative {
    return Intl.message(
      'Buy tax cannot be negative',
      name: 'buy_tax_negative',
      desc: 'Error when buy tax is negative',
      args: [],
    );
  }

  /// `Paid amount cannot be negative`
  String get paid_amount_negative {
    return Intl.message(
      'Paid amount cannot be negative',
      name: 'paid_amount_negative',
      desc: 'Error when paid amount is negative',
      args: [],
    );
  }

  /// `Failed to save purchase: {error}`
  String failed_save_purchase(Object error) {
    return Intl.message(
      'Failed to save purchase: $error',
      name: 'failed_save_purchase',
      desc: 'Error when saving purchase fails with {error}',
      args: [error],
    );
  }

  /// `Purchase saved successfully`
  String get purchase_saved_success {
    return Intl.message(
      'Purchase saved successfully',
      name: 'purchase_saved_success',
      desc: 'Success message when purchase is saved',
      args: [],
    );
  }

  /// `Low Stock Alerts`
  String get low_stock_alerts {
    return Intl.message(
      'Low Stock Alerts',
      name: 'low_stock_alerts',
      desc: 'Label for low stock alerts section',
      args: [],
    );
  }

  /// `Quick Actions`
  String get quick_actions {
    return Intl.message(
      'Quick Actions',
      name: 'quick_actions',
      desc: 'Label for quick actions section',
      args: [],
    );
  }

  /// `Owner`
  String get owner {
    return Intl.message(
      'Owner',
      name: 'owner',
      desc: 'Label for owner field',
      args: [],
    );
  }

  /// `Welcome, {ownerName}`
  String welcome_owner(Object ownerName) {
    return Intl.message(
      'Welcome, $ownerName',
      name: 'welcome_owner',
      desc: 'Welcome message with owner\'s name',
      args: [ownerName],
    );
  }

  /// `Monitor your inventory and finances`
  String get monitor_inventory {
    return Intl.message(
      'Monitor your inventory and finances',
      name: 'monitor_inventory',
      desc: 'Description for inventory and finance monitoring',
      args: [],
    );
  }

  /// `Inventory`
  String get inventory {
    return Intl.message(
      'Inventory',
      name: 'inventory',
      desc: 'Label for inventory section',
      args: [],
    );
  }

  /// `ETB`
  String get etb {
    return Intl.message(
      'ETB',
      name: 'etb',
      desc: 'Label for Ethiopian Birr',
      args: [],
    );
  }

  /// `Sales Trend`
  String get sales_trend {
    return Intl.message(
      'Sales Trend',
      name: 'sales_trend',
      desc: 'Label for sales trend section',
      args: [],
    );
  }

  /// `Swap`
  String get swap {
    return Intl.message(
      'Swap',
      name: 'swap',
      desc: 'Label for swap action',
      args: [],
    );
  }

  /// `Disposal`
  String get disposal {
    return Intl.message(
      'Disposal',
      name: 'disposal',
      desc: 'Label for disposal action',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: 'Label for name field',
      args: [],
    );
  }

  /// `No low stock items`
  String get no_low_stock {
    return Intl.message(
      'No low stock items',
      name: 'no_low_stock',
      desc: 'Message when no low stock items are found',
      args: [],
    );
  }

  /// `Stock`
  String get stock {
    return Intl.message(
      'Stock',
      name: 'stock',
      desc: 'Label for stock field',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Shop Address`
  String get shopAddress {
    return Intl.message(
      'Shop Address',
      name: 'shopAddress',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `TIN Number`
  String get tinNumber {
    return Intl.message(
      'TIN Number',
      name: 'tinNumber',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Select Theme`
  String get selectTheme {
    return Intl.message(
      'Select Theme',
      name: 'selectTheme',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Select Currency`
  String get selectCurrency {
    return Intl.message(
      'Select Currency',
      name: 'selectCurrency',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Owner name cannot be empty`
  String get ownerNameEmpty {
    return Intl.message(
      'Owner name cannot be empty',
      name: 'ownerNameEmpty',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Shop name cannot be empty`
  String get shopNameEmpty {
    return Intl.message(
      'Shop name cannot be empty',
      name: 'shopNameEmpty',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Phone number must be at least 10 characters`
  String get phoneNumberInvalid {
    return Intl.message(
      'Phone number must be at least 10 characters',
      name: 'phoneNumberInvalid',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `TIN number must be at least 8 characters`
  String get tinNumberInvalid {
    return Intl.message(
      'TIN number must be at least 8 characters',
      name: 'tinNumberInvalid',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Reconciliation Threshold must be non-negative`
  String get thresholdNegative {
    return Intl.message(
      'Reconciliation Threshold must be non-negative',
      name: 'thresholdNegative',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Inventory Alert Level must be non-negative`
  String get inventoryNegative {
    return Intl.message(
      'Inventory Alert Level must be non-negative',
      name: 'inventoryNegative',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Tax rate must be non-negative`
  String get taxRateNegative {
    return Intl.message(
      'Tax rate must be non-negative',
      name: 'taxRateNegative',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `New Field`
  String get newField {
    return Intl.message(
      'New Field',
      name: 'newField',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `New field must be at least 5 characters`
  String get newFieldInvalid {
    return Intl.message(
      'New field must be at least 5 characters',
      name: 'newFieldInvalid',
      desc: 'Lable for app configuration.',
      args: [],
    );
  }

  /// `Add Sales`
  String get add_sale {
    return Intl.message(
      'Add Sales',
      name: 'add_sale',
      desc: 'Label for sales form',
      args: [],
    );
  }

  /// `Edit Sales`
  String get edit_sale {
    return Intl.message(
      'Edit Sales',
      name: 'edit_sale',
      desc: 'Label for sales form',
      args: [],
    );
  }

  /// `Total Quantity`
  String get total_quantity {
    return Intl.message(
      'Total Quantity',
      name: 'total_quantity',
      desc: 'Label for total quantity',
      args: [],
    );
  }

  /// `Total Expense`
  String get total_expense {
    return Intl.message(
      'Total Expense',
      name: 'total_expense',
      desc: 'Label for total expense',
      args: [],
    );
  }

  /// `Are you sure you want to delete an expense?`
  String get confirm_delete_expense {
    return Intl.message(
      'Are you sure you want to delete an expense?',
      name: 'confirm_delete_expense',
      desc: 'Label for expense delete confirmation',
      args: [],
    );
  }

  /// `Are you sure you want to delete this sales?`
  String get confirm_delete_sales {
    return Intl.message(
      'Are you sure you want to delete this sales?',
      name: 'confirm_delete_sales',
      desc: 'Label for sales delete confirmation',
      args: [],
    );
  }

  /// `Are you sure you want to delete this purchase?`
  String get confirm_delete_purchases {
    return Intl.message(
      'Are you sure you want to delete this purchase?',
      name: 'confirm_delete_purchases',
      desc: 'Label for sales delete confirmation',
      args: [],
    );
  }

  /// `Employee Expense`
  String get employeeExpense {
    return Intl.message(
      'Employee Expense',
      name: 'employeeExpense',
      desc: 'Label for employee expense category',
      args: [],
    );
  }

  /// `Guard Expense`
  String get guardExpense {
    return Intl.message(
      'Guard Expense',
      name: 'guardExpense',
      desc: 'Label for guard expense category',
      args: [],
    );
  }

  /// `House Rent`
  String get houseRent {
    return Intl.message(
      'House Rent',
      name: 'houseRent',
      desc: 'Label for house rent expense category',
      args: [],
    );
  }

  /// `Food Expense`
  String get food {
    return Intl.message(
      'Food Expense',
      name: 'food',
      desc: 'Label for food expense category',
      args: [],
    );
  }

  /// `Transportation Expense`
  String get transportation {
    return Intl.message(
      'Transportation Expense',
      name: 'transportation',
      desc: 'Label for transportation expense category',
      args: [],
    );
  }

  /// `Goods Transport Expense`
  String get goodsTransport {
    return Intl.message(
      'Goods Transport Expense',
      name: 'goodsTransport',
      desc: 'Label for goods transport expense category',
      args: [],
    );
  }

  /// `Plastic packaging Expense`
  String get festal {
    return Intl.message(
      'Plastic packaging Expense',
      name: 'festal',
      desc: 'Label for festal expense category',
      args: [],
    );
  }

  /// `Waste Expense`
  String get waste {
    return Intl.message(
      'Waste Expense',
      name: 'waste',
      desc: 'Label for waste expense category',
      args: [],
    );
  }

  /// `Packaging Expense`
  String get packaging {
    return Intl.message(
      'Packaging Expense',
      name: 'packaging',
      desc: 'Label for packaging expense category',
      args: [],
    );
  }

  /// `Commission Expense`
  String get commission {
    return Intl.message(
      'Commission Expense',
      name: 'commission',
      desc: 'Label for commission expense category',
      args: [],
    );
  }

  /// `Militia Expense`
  String get militia {
    return Intl.message(
      'Militia Expense',
      name: 'militia',
      desc: 'Label for militia expense category',
      args: [],
    );
  }

  /// `Warehouse Expense`
  String get warehouse {
    return Intl.message(
      'Warehouse Expense',
      name: 'warehouse',
      desc: 'Label for warehouse expense category',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: 'Label for other things.',
      args: [],
    );
  }

  /// `Price Amount`
  String get current_amount {
    return Intl.message(
      'Price Amount',
      name: 'current_amount',
      desc: 'Label for text Field amount',
      args: [],
    );
  }

  /// `Tap to pick image`
  String get tap_to_pick_image {
    return Intl.message(
      'Tap to pick image',
      name: 'tap_to_pick_image',
      desc: 'Label for to pick image',
      args: [],
    );
  }

  /// `Take Photo`
  String get take_photo {
    return Intl.message(
      'Take Photo',
      name: 'take_photo',
      desc: 'Lable for to take photo',
      args: [],
    );
  }

  /// `Choose from gallery`
  String get choose_from_gallery {
    return Intl.message(
      'Choose from gallery',
      name: 'choose_from_gallery',
      desc: 'Lable for to choose form gallery',
      args: [],
    );
  }

  /// `Color Swap`
  String get swapReasonColor {
    return Intl.message(
      'Color Swap',
      name: 'swapReasonColor',
      desc: 'Lable for color swap',
      args: [],
    );
  }

  /// `Size Swap`
  String get swapReasonSize {
    return Intl.message(
      'Size Swap',
      name: 'swapReasonSize',
      desc: 'Label for size swap',
      args: [],
    );
  }

  /// `Brand Swap`
  String get swapReasonBrand {
    return Intl.message(
      'Brand Swap',
      name: 'swapReasonBrand',
      desc: 'label for brand swap',
      args: [],
    );
  }

  /// `New`
  String get itemConditionNew {
    return Intl.message(
      'New',
      name: 'itemConditionNew',
      desc: 'Translation for item condition: New',
      args: [],
    );
  }

  /// `Used`
  String get itemConditionUsed {
    return Intl.message(
      'Used',
      name: 'itemConditionUsed',
      desc: 'Translation for item condition: Used',
      args: [],
    );
  }

  /// `Refurbished`
  String get itemConditionRefurbished {
    return Intl.message(
      'Refurbished',
      name: 'itemConditionRefurbished',
      desc: 'Translation for item condition: Refurbished',
      args: [],
    );
  }

  /// `Defective`
  String get itemConditionDefective {
    return Intl.message(
      'Defective',
      name: 'itemConditionDefective',
      desc: 'Translation for item condition: Defective',
      args: [],
    );
  }

  /// `ግዢ`
  String get purchase {
    return Intl.message(
      'ግዢ',
      name: 'purchase',
      desc: 'Label for purchase',
      args: [],
    );
  }

  /// `ሽያጭ`
  String get sales {
    return Intl.message(
      'ሽያጭ',
      name: 'sales',
      desc: 'Label for Sales',
      args: [],
    );
  }

  /// `ሪፖርት`
  String get analytics {
    return Intl.message(
      'ሪፖርት',
      name: 'analytics',
      desc: 'Label for analytics',
      args: [],
    );
  }

  /// `ፋይናንስ`
  String get finance {
    return Intl.message(
      'ፋይናንስ',
      name: 'finance',
      desc: 'Label for finance',
      args: [],
    );
  }

  /// `ወጪ`
  String get expense {
    return Intl.message(
      'ወጪ',
      name: 'expense',
      desc: 'Label for expense',
      args: [],
    );
  }

  /// `ቅንብር`
  String get setting {
    return Intl.message(
      'ቅንብር',
      name: 'setting',
      desc: 'Label for setting',
      args: [],
    );
  }

  /// `Rental Details`
  String get rentalDetails {
    return Intl.message(
      'Rental Details',
      name: 'rentalDetails',
      desc: 'Label for the rental details section',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: 'Label for the start date field',
      args: [],
    );
  }

  /// `Start Date is required`
  String get startDateRequired {
    return Intl.message(
      'Start Date is required',
      name: 'startDateRequired',
      desc: 'Error message when the start date field is empty',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: 'Label for the end date field',
      args: [],
    );
  }

  /// `End Date is required`
  String get endDateRequired {
    return Intl.message(
      'End Date is required',
      name: 'endDateRequired',
      desc: 'Error message when the end date field is empty',
      args: [],
    );
  }

  /// `Search Purchased Items`
  String get searchPurchasedItems {
    return Intl.message(
      'Search Purchased Items',
      name: 'searchPurchasedItems',
      desc: 'Label for the purchase item search field',
      args: [],
    );
  }

  /// `Please select a purchase item`
  String get selectPurchaseItem {
    return Intl.message(
      'Please select a purchase item',
      name: 'selectPurchaseItem',
      desc: 'Error message when no purchase item is selected',
      args: [],
    );
  }

  /// `Customer ID`
  String get customerId {
    return Intl.message(
      'Customer ID',
      name: 'customerId',
      desc: 'Label for the customer ID field',
      args: [],
    );
  }

  /// `Customer ID is required`
  String get customerIdRequired {
    return Intl.message(
      'Customer ID is required',
      name: 'customerIdRequired',
      desc: 'Error message when the customer ID field is empty',
      args: [],
    );
  }

  /// `Rental Fee`
  String get rentalFee {
    return Intl.message(
      'Rental Fee',
      name: 'rentalFee',
      desc: 'Label for the rental fee field',
      args: [],
    );
  }

  /// `Rental Fee is required`
  String get rentalFeeRequired {
    return Intl.message(
      'Rental Fee is required',
      name: 'rentalFeeRequired',
      desc: 'Error message when the rental fee field is empty',
      args: [],
    );
  }

  /// `Please enter a valid rental fee`
  String get validRentalFee {
    return Intl.message(
      'Please enter a valid rental fee',
      name: 'validRentalFee',
      desc: 'Error message when the rental fee is invalid or negative',
      args: [],
    );
  }

  /// `Rent Quantity`
  String get rentQuantity {
    return Intl.message(
      'Rent Quantity',
      name: 'rentQuantity',
      desc: 'Label for the rent quantity field',
      args: [],
    );
  }

  /// `Rent Quantity is required`
  String get rentQuantityRequired {
    return Intl.message(
      'Rent Quantity is required',
      name: 'rentQuantityRequired',
      desc: 'Error message when the rent quantity field is empty',
      args: [],
    );
  }

  /// `Please enter a valid quantity`
  String get validQuantity {
    return Intl.message(
      'Please enter a valid quantity',
      name: 'validQuantity',
      desc: 'Error message when the rent quantity is invalid or non-positive',
      args: [],
    );
  }

  /// `Deposit`
  String get deposit {
    return Intl.message(
      'Deposit',
      name: 'deposit',
      desc: 'Label for the deposit field',
      args: [],
    );
  }

  /// `Deposit is required`
  String get depositRequired {
    return Intl.message(
      'Deposit is required',
      name: 'depositRequired',
      desc: 'Error message when the deposit field is empty',
      args: [],
    );
  }

  /// `Please enter a valid deposit`
  String get validDeposit {
    return Intl.message(
      'Please enter a valid deposit',
      name: 'validDeposit',
      desc: 'Error message when the deposit is invalid or negative',
      args: [],
    );
  }

  /// `Rental Status`
  String get rentalStatus {
    return Intl.message(
      'Rental Status',
      name: 'rentalStatus',
      desc: 'Label for the rental status dropdown',
      args: [],
    );
  }

  /// `Rental Status is required`
  String get rentalStatusRequired {
    return Intl.message(
      'Rental Status is required',
      name: 'rentalStatusRequired',
      desc: 'Error message when no rental status is selected',
      args: [],
    );
  }

  /// `Show Additional Fields`
  String get showAdditionalFields {
    return Intl.message(
      'Show Additional Fields',
      name: 'showAdditionalFields',
      desc: 'Label for the checkbox to show additional fields',
      args: [],
    );
  }

  /// `Item SKU`
  String get itemSKU {
    return Intl.message(
      'Item SKU',
      name: 'itemSKU',
      desc: 'Label for the item SKU field',
      args: [],
    );
  }

  /// `Image Path`
  String get imagePath {
    return Intl.message(
      'Image Path',
      name: 'imagePath',
      desc: 'Label for the image path field',
      args: [],
    );
  }

  /// `Add Rental`
  String get addRental {
    return Intl.message(
      'Add Rental',
      name: 'addRental',
      desc: 'Title for the app bar when adding a new rental',
      args: [],
    );
  }

  /// `Edit Rental`
  String get editRental {
    return Intl.message(
      'Edit Rental',
      name: 'editRental',
      desc: 'Title for the app bar when editing an existing rental',
      args: [],
    );
  }

  /// `Cost`
  String get cost {
    return Intl.message(
      'Cost',
      name: 'cost',
      desc: 'Label for the cost field in purchase item selection',
      args: [],
    );
  }

  /// `Disposal Details`
  String get disposalDetails {
    return Intl.message(
      'Disposal Details',
      name: 'disposalDetails',
      desc: 'Label for the disposal details section',
      args: [],
    );
  }

  /// `Disposal Date`
  String get disposalDate {
    return Intl.message(
      'Disposal Date',
      name: 'disposalDate',
      desc: 'Label for the disposal date field',
      args: [],
    );
  }

  /// `Disposal Date is required`
  String get disposalDateRequired {
    return Intl.message(
      'Disposal Date is required',
      name: 'disposalDateRequired',
      desc: 'Error message when the disposal date field is empty',
      args: [],
    );
  }

  /// `Quantity is required`
  String get quantityRequired {
    return Intl.message(
      'Quantity is required',
      name: 'quantityRequired',
      desc: 'Error message when the quantity field is empty',
      args: [],
    );
  }

  /// `Disposal Reason`
  String get disposalReason {
    return Intl.message(
      'Disposal Reason',
      name: 'disposalReason',
      desc: 'Label for the disposal reason dropdown',
      args: [],
    );
  }

  /// `Disposal Reason is required`
  String get disposalReasonRequired {
    return Intl.message(
      'Disposal Reason is required',
      name: 'disposalReasonRequired',
      desc: 'Error message when no disposal reason is selected',
      args: [],
    );
  }

  /// `Disposal Method`
  String get disposalMethod {
    return Intl.message(
      'Disposal Method',
      name: 'disposalMethod',
      desc: 'Label for the disposal method dropdown',
      args: [],
    );
  }

  /// `Disposal Method is required`
  String get disposalMethodRequired {
    return Intl.message(
      'Disposal Method is required',
      name: 'disposalMethodRequired',
      desc: 'Error message when no disposal method is selected',
      args: [],
    );
  }

  /// `Original Item Cost`
  String get originalItemCost {
    return Intl.message(
      'Original Item Cost',
      name: 'originalItemCost',
      desc: 'Label for the original item cost field',
      args: [],
    );
  }

  /// `Original Item Cost is required`
  String get originalItemCostRequired {
    return Intl.message(
      'Original Item Cost is required',
      name: 'originalItemCostRequired',
      desc: 'Error message when the original item cost field is empty',
      args: [],
    );
  }

  /// `Please enter a valid original item cost`
  String get validOriginalItemCost {
    return Intl.message(
      'Please enter a valid original item cost',
      name: 'validOriginalItemCost',
      desc: 'Error message when the original item cost is invalid or negative',
      args: [],
    );
  }

  /// `Stock Location`
  String get stockLocation {
    return Intl.message(
      'Stock Location',
      name: 'stockLocation',
      desc: 'Label for the stock location field',
      args: [],
    );
  }

  /// `Expense Description`
  String get expenseDescription {
    return Intl.message(
      'Expense Description',
      name: 'expenseDescription',
      desc: 'Label for the expense description field',
      args: [],
    );
  }

  /// `Expense ID`
  String get expenseId {
    return Intl.message(
      'Expense ID',
      name: 'expenseId',
      desc: 'Label for the expense ID field',
      args: [],
    );
  }

  /// `Disposal Expense Amount`
  String get disposalExpenseAmount {
    return Intl.message(
      'Disposal Expense Amount',
      name: 'disposalExpenseAmount',
      desc: 'Label for the disposal expense amount field',
      args: [],
    );
  }

  /// `Please enter a valid disposal expense amount`
  String get validDisposalExpenseAmount {
    return Intl.message(
      'Please enter a valid disposal expense amount',
      name: 'validDisposalExpenseAmount',
      desc:
          'Error message when the disposal expense amount is invalid or negative',
      args: [],
    );
  }

  /// `Processed By Staff ID`
  String get processedByStaffId {
    return Intl.message(
      'Processed By Staff ID',
      name: 'processedByStaffId',
      desc: 'Label for the processed by staff ID field',
      args: [],
    );
  }

  /// `Add Disposal`
  String get addDisposal {
    return Intl.message(
      'Add Disposal',
      name: 'addDisposal',
      desc: 'Title for the app bar when adding a new disposal',
      args: [],
    );
  }

  /// `Edit Disposal`
  String get editDisposal {
    return Intl.message(
      'Edit Disposal',
      name: 'editDisposal',
      desc: 'Title for the app bar when editing an existing disposal',
      args: [],
    );
  }

  /// `Inventory App`
  String get inventoryApp {
    return Intl.message(
      'Inventory App',
      name: 'inventoryApp',
      desc: 'Title for inventory app.',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'am'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

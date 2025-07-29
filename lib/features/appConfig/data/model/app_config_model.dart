import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class AppConfigModel extends HiveObject {
  final String ownerName;
  final String shopName;
  final String? phoneNumber;
  final String? shopAddress;
  final String? tinNumber;
  final LanguageOption language;
  final AppTheme theme;
  final int reconciliationThreshold;
  final int inventoryAlertLevel;
  final double taxRate;
  final String? logoPath;
  final Currency currency;

  AppConfigModel({
    required this.ownerName,
    required this.shopName,
    required this.reconciliationThreshold,
    this.inventoryAlertLevel = 5,
    this.taxRate = 0.0,
    this.logoPath,
    this.language = LanguageOption.english,
    this.theme = AppTheme.light,
    this.currency = Currency.birr,
    this.shopAddress,
    this.phoneNumber,
    this.tinNumber,
  }) {
    validateField('ownerName', ownerName);
    validateField('shopName', shopName);
    validateField('phoneNumber', phoneNumber);
    validateField('tinNumber', tinNumber);
    validateField('reconciliationThreshold', reconciliationThreshold);
    validateField('inventoryAlertLevel', inventoryAlertLevel);
    validateField('taxRate', taxRate);
  }

  void validateField(String field, dynamic value) {
    switch (field) {
      case 'ownerName':
      case 'shopName':
        if (value == null || (value as String).isEmpty) {
          throw ArgumentError('$field cannot be empty');
        }
        break;
      case 'phoneNumber':
        if (value != null && (value as String).length < 10) {
          throw ArgumentError('Phone number must be at least 10 characters');
        }
        break;
      case 'tinNumber':
        if (value != null && (value as String).length < 8) {
          throw ArgumentError('TIN number must be at least 8 characters');
        }
        break;
      case 'reconciliationThreshold':
        if ((value as int) < 0) {
          throw ArgumentError('Reconciliation threshold must be non-negative');
        }
        break;
      case 'inventoryAlertLevel':
        if ((value as int) < 0) {
          throw ArgumentError('Inventory alert level must be non-negative');
        }
        break;
      case 'taxRate':
        if ((value as double) < 0) {
          throw ArgumentError('Tax rate must be non-negative');
        }
        break;
    }
  }

  // Create a copy with updated values
  AppConfigModel copyWith({
    String? ownerName,
    String? shopName,
    String? phoneNumber,
    String? shopAddress,
    String? tinNumber,
    LanguageOption? language,
    AppTheme? theme,
    int? reconciliationThreshold,
    int? inventoryAlertLevel,
    double? taxRate,
    String? logoPath,
    Currency? currency,
  }) {
    return AppConfigModel(
      ownerName: ownerName ?? this.ownerName,
      shopName: shopName ?? this.shopName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      shopAddress: shopAddress ?? this.shopAddress,
      tinNumber: tinNumber ?? this.tinNumber,
      language: language ?? this.language,
      theme: theme ?? this.theme,
      reconciliationThreshold:
          reconciliationThreshold ?? this.reconciliationThreshold,
      inventoryAlertLevel: inventoryAlertLevel ?? this.inventoryAlertLevel,
      taxRate: taxRate ?? this.taxRate,
      logoPath: logoPath ?? this.logoPath,
      currency: currency ?? this.currency,
    );
  }

  // Convert AppConfig to Json for storage
  Map<String, dynamic> toJson() => {
    'ownerName': ownerName,
    'shopName': shopName,
    'phoneNumber': phoneNumber,
    'shopAddress': shopAddress,
    'tinNumber': tinNumber,
    'language': language.name,
    'theme': theme.name,
    'reconciliationThreshold': reconciliationThreshold,
    'inventoryAlertLevel': inventoryAlertLevel,
    'taxRate': taxRate,
    'logoPath': logoPath,
    'currency': currency.name,
  };

  // Create AppConfigModel from JSON
  factory AppConfigModel.fromJson(Map<String, dynamic> json) {
    return AppConfigModel(
      ownerName: json['ownerName'] as String? ?? 'Default Owner',
      shopName: json['shopName'] as String? ?? 'Default Shop',
      phoneNumber: json['phoneNumber'] as String?,
      shopAddress: json['shopAddress'] as String?,
      tinNumber: json['tinNumber'] as String?,
      language: LanguageOption.values.firstWhere(
        (e) => e.name == (json['language'] as String? ?? 'english'),
        orElse: () => LanguageOption.english,
      ),
      theme: AppTheme.values.firstWhere(
        (e) => e.name == (json['theme'] as String? ?? 'light'),
        orElse: () => AppTheme.light,
      ),
      reconciliationThreshold: json['reconciliationThreshold'] as int? ?? 100,
      inventoryAlertLevel: json['inventoryAlertLevel'] as int? ?? 5,
      taxRate: (json['taxRate'] as num?)?.toDouble() ?? 0.0,
      logoPath: json['logoPath'] as String?,
      currency: Currency.values.firstWhere(
        (e) => e.name == (json['currency'] as String? ?? 'birr'),
        orElse: () => Currency.birr,
      ),
    );
  }
}
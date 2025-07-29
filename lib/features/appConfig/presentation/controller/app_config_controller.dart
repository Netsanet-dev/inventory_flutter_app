import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_flutter_app/features/appConfig/data/model/app_config_model.dart';
import 'package:inventory_flutter_app/features/appConfig/domain/usecases/app_config_usecase.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';
import 'package:inventory_flutter_app/utils/helper/app_pick_image.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class AppConfigController extends GetxController {
  final AppConfigUsecase _useCase;
  final ownerNameController = TextEditingController();
  final shopNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final shopAddressController = TextEditingController();
  final tinNumberController = TextEditingController();
  final reconciliationThresholdController = TextEditingController();
  final inventoryAlertLevelController = TextEditingController();
  final taxRateController = TextEditingController();
  final Rx<LanguageOption> selectedLanguage = LanguageOption.english.obs;
  final Rx<AppTheme> selectedTheme = AppTheme.light.obs;
  final Rx<Currency> selectedCurrency = Currency.birr.obs;
  final Rx<Locale> locale = const Locale('en').obs;
  final RxString errorMessage = ''.obs;

  final Rx<AppConfigModel> config = AppConfigModel(
    ownerName: '',
    shopName: '',
    reconciliationThreshold: 100,
    inventoryAlertLevel: 5,
    taxRate: 0.0,
    language: LanguageOption.english,
    theme: AppTheme.light,
    currency: Currency.birr,
  ).obs;

  ThemeMode get themeMode {
    switch (selectedTheme.value) {
      case AppTheme.light:
        return ThemeMode.light;
      case AppTheme.dark:
        return ThemeMode.dark;
      case AppTheme.system:
        return ThemeMode.system;
    }
  }

  static const logContext = 'AppConfigController';

  AppConfigController(this._useCase) {
    _useCase.getConfigStream().listen(
      (newConfig) {
        config.value = newConfig;
        _updateControllers(newConfig);
        selectedLanguage.value = newConfig.language;
        selectedTheme.value = newConfig.theme;
        selectedCurrency.value = newConfig.currency;
        locale.value = newConfig.language == LanguageOption.english
            ? const Locale('en')
            : const Locale('am');
        Get.changeThemeMode(themeMode);
        Get.updateLocale(locale.value);
      },
      onError: (e, s) {
        errorMessage.value = 'Error fetching config: $e';
        LoggerUtil.logError(logContext, 'Error watching config', e, s);
      },
    );
  }

  void _updateControllers(AppConfigModel config) {
    ownerNameController.text = config.ownerName;
    shopNameController.text = config.shopName;
    phoneNumberController.text = config.phoneNumber ?? '';
    shopAddressController.text = config.shopAddress ?? '';
    tinNumberController.text = config.tinNumber ?? '';
    reconciliationThresholdController.text = config.reconciliationThreshold
        .toString();
    inventoryAlertLevelController.text = config.inventoryAlertLevel.toString();
    taxRateController.text = config.taxRate.toString();
  }

  Future<bool> resetConfig() async {
    try {
      await _useCase.resetConfig();
      errorMessage.value = '';
      return true;
    } catch (e, s) {
      errorMessage.value = 'Failed to reset config: $e';
      LoggerUtil.logError(logContext, 'Failed to reset config', e, s);
      return false;
    }
  }

  Future<bool> saveConfig() async {
    try {
      final fields = {
        'ownerName': ownerNameController.text.trim(),
        'shopName': shopNameController.text.trim(),
        'phoneNumber': phoneNumberController.text.trim().isEmpty
            ? null
            : phoneNumberController.text.trim(),
        'shopAddress': shopAddressController.text.trim().isEmpty
            ? null
            : shopAddressController.text.trim(),
        'tinNumber': tinNumberController.text.trim().isEmpty
            ? null
            : tinNumberController.text.trim(),
        'reconciliationThreshold':
            int.tryParse(reconciliationThresholdController.text) ??
            config.value.reconciliationThreshold,
        'inventoryAlertLevel':
            int.tryParse(inventoryAlertLevelController.text) ??
            config.value.inventoryAlertLevel,
        'taxRate':
            double.tryParse(taxRateController.text) ?? config.value.taxRate,
        'language': selectedLanguage.value,
        'theme': selectedTheme.value,
        'currency': selectedCurrency.value,
      };
      await _useCase.updateConfig(fields);
      errorMessage.value = '';
      return true;
    } catch (e, s) {
      errorMessage.value = e.toString();
      LoggerUtil.logError(logContext, 'Failed to save config', e, s);
      return false;
    }
  }

  Future<String?> pickLogo() async {
    try {
      final logoPath = ImagePickerHelper.pickImageFromGallery();
      await _useCase.updateConfig({'logoPath': logoPath});
      return logoPath;
    } catch (e, s) {
      errorMessage.value = 'Failed to pick logo: $e';
      LoggerUtil.logError(logContext, 'Failed to pick logo', e, s);
      return null;
    }
  }

  @override
  void onClose() {
    ownerNameController.dispose();
    shopNameController.dispose();
    phoneNumberController.dispose();
    shopAddressController.dispose();
    tinNumberController.dispose();
    reconciliationThresholdController.dispose();
    inventoryAlertLevelController.dispose();
    taxRateController.dispose();
    super.onClose();
  }
}

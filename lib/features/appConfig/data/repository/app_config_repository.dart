import 'package:get/get.dart';
import 'package:inventory_flutter_app/features/appConfig/data/model/app_config_model.dart';
import 'package:inventory_flutter_app/features/appConfig/data/service/app_config_service.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';
import 'package:rxdart/rxdart.dart';

class AppConfigRepository extends GetxService {
  final AppConfigDataService _service;
  static const logContext = 'AppConfigService';
  final BehaviorSubject<AppConfigModel> _configStreamController;

  AppConfigRepository(this._service)
    : _configStreamController = BehaviorSubject<AppConfigModel>();

  @override
  void onInit() {
    super.onInit();
    _initRepository();
  }

  @override
  void onClose() {
    _configStreamController.close();
    super.onClose();
  }

  AppConfigModel get _defaultConfig => AppConfigModel(
    ownerName: '',
    shopName: '',
    reconciliationThreshold: 100,
    inventoryAlertLevel: 5,
    taxRate: 0.0,
    language: LanguageOption.english,
    theme: AppTheme.light,
    currency: Currency.birr,
  );

  Future<void> _initRepository() async {
    try {
      final config = await _service.getConfig();
      _configStreamController.add(config);
      _service.watchConfig().listen(
        (config) {
          _configStreamController.add(config);
        },
        onError: (e, s) {
          LoggerUtil.logError(logContext, 'Error watching config: ', e, s);
        },
      );
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to initialize', e, s);
      _configStreamController.add(_defaultConfig);
    }
  }

  Stream<AppConfigModel> getConfigStream() =>
      _configStreamController.stream.debounceTime(Duration(milliseconds: 50));

  Future<void> saveConfig(AppConfigModel config) async {
    try {
      await _service.saveConfig(config);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to save config', e, s);
    }
  }

  Future<void> updateFields(Map<String, dynamic> fields) async {
    try {
      final currentConfig = await getConfig();
      final updatedConfig = currentConfig.copyWith(
        ownerName: fields['ownerName'],
        shopName: fields['shopName'],
        phoneNumber: fields['phoneNumber'],
        shopAddress: fields['shopAddress'],
        tinNumber: fields['tinNumber'],
        language: fields['language'],
        theme: fields['theme'],
        reconciliationThreshold: fields['reconciliationThreshold'],
        inventoryAlertLevel: fields['inventoryAlertLevel'],
        taxRate: fields['taxRate'],
        logoPath: fields['logoPath'],
        currency: fields['currency'],
      );
      await saveConfig(updatedConfig);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to update fields', e, s);
      rethrow;
    }
  }

  Future<AppConfigModel> getConfig() async {
    try {
      final config = await _service.getConfig();
      return config;
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to get config', e, s);
      return _defaultConfig;
    }
  }

  Future<void> resetConfig() async {
    try {
      await _service.deleteConfig();
      await _service.saveConfig(_defaultConfig);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to reset config', e, s);
      rethrow;
    }
  }
}

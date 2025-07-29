import 'package:hive_ce/hive.dart';
import 'package:inventory_flutter_app/features/appConfig/data/model/app_config_model.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';
import 'package:inventory_flutter_app/utils/app_string_constant.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class AppConfigDataService {
  static const String configKey = 'currentConfig';
  static const String logContext = 'AppConfigService';
  final Box<AppConfigModel> _box;

  AppConfigDataService()
    : _box = Hive.box<AppConfigModel>(AppStringConstant.appConfigModel);

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

  Future<AppConfigModel> getConfig() async {
    try {
      final config = _box.get(configKey) ?? _defaultConfig;
      return config;
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to get Config: ', e, s);
      rethrow;
    }
  }

  Future<void> saveConfig(AppConfigModel config) async {
    try {
      await _box.put(configKey, config);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to save config: ', e, s);
      rethrow;
    }
  }

  Future<void> deleteConfig() async {
    try {
      await _box.delete(configKey);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to delete config: ', e, s);
    }
  }

  Stream<AppConfigModel> watchConfig() async* {
    yield* _box
        .watch(key: configKey)
        .map((event) => event.value as AppConfigModel? ?? _defaultConfig);
  }
}

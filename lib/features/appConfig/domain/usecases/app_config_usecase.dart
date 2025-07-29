import 'package:inventory_flutter_app/features/appConfig/data/model/app_config_model.dart';
import 'package:inventory_flutter_app/features/appConfig/data/repository/app_config_repository.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class AppConfigUsecase {
  final AppConfigRepository _repository;
  static const logContext = 'AppConfigUseCase';

  AppConfigUsecase(this._repository);

  Stream<AppConfigModel> getConfigStream() => _repository.getConfigStream();

  Future<void> updateConfig(Map<String, dynamic> fields) async {
    try {
      final validationError = _validateFields(fields);
      if (validationError != null) {
        throw Exception(validationError);
      }
      await _repository.updateFields(fields);
    } catch (e, s) {
      LoggerUtil.logError(logContext, 'Failed to update config', e, s);
      rethrow;
    }
  }

  Future<void> resetConfig() => _repository.resetConfig();

  String? _validateFields(Map<String, dynamic> fields) {
    for (var entry in fields.entries) {
      final field = entry.key;
      final value = entry.value;
      switch (field) {
        case 'ownerName':
        case 'shopName':
          if (value == null || (value as String).trim().isEmpty) {
            return '${field == 'ownerName' ? 'Owner name' : 'Shop name'} cannot be empty';
          }
          break;
        case 'phoneNumber':
          if (value != null &&
              value.trim().isNotEmpty &&
              value.trim().length < 10) {
            return 'Phone number must be at least 10 characters';
          }
          break;
        case 'tinNumber':
          if (value != null &&
              value.trim().isNotEmpty &&
              value.trim().length < 8) {
            return 'TIN number must be at least 8 characters';
          }
          break;
        case 'reconciliationThreshold':
        case 'inventoryAlertLevel':
          if (value != null && (value as int) < 0) {
            return '${field == 'reconciliationThreshold' ? 'Reconciliation Threshold' : 'Inventory Alert Level'} must be non-negative';
          }
          break;
        case 'taxRate':
          if (value != null && (value as double) < 0) {
            return 'Tax rate must be non-negative';
          }
          break;
      }
    }
    return null;
  }
}

import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class ItemConditionTranslation {
  static const _conditionTranslations = {
    ItemCondition.newCondition: 'itemConditionNew',
    ItemCondition.used: 'itemConditionUsed',
    ItemCondition.refurbished: 'itemConditionRefurbished',
    ItemCondition.defective: 'itemConditionDefective',
    ItemCondition.other: 'itemConditionOther',
  };

  /// Translates an [ItemCondition] enum value into a localized string.
  /// It uses the provided [AppLocalizations] instance for translation.
  /// If no translation key is found, it falls back to the enum's name.
  static String translateItemCondition(
    ItemCondition condition,
    AppLocalizations l10n,
  ) {
    final translationKey = _conditionTranslations[condition];
    if (translationKey == null) {
      return condition.toString().split('.').last; // Fallback to enum name
    }

    switch (translationKey) {
      case 'itemConditionNew':
        return l10n.itemConditionNew;
      case 'itemConditionUsed':
        return l10n.itemConditionUsed;
      case 'itemConditionRefurbished':
        return l10n.itemConditionRefurbished;
      case 'itemConditionDefective':
        return l10n.itemConditionDefective;
      case 'itemConditionOther':
        return l10n.other;
      default:
        return condition.toString().split('.').last; // Fallback
    }
  }
}

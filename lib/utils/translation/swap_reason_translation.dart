import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class SwapReasonTranslation {
  static const _reasonTranslations = {
    SwapReason.color: 'swapReasonColor',
    SwapReason.size: 'swapReasonSize',
    SwapReason.brand: 'swapReasonBrand',
    SwapReason.other: 'swapReasonOther',
  };

  /// Translates a [SwapReason] enum value into a localized string.
  /// It uses the provided [AppLocalizations] instance for translation.
  /// If no translation key is found, it falls back to the enum's name.
  static String translateSwapReason(SwapReason reason, AppLocalizations l10n) {
    final translationKey = _reasonTranslations[reason];
    if (translationKey == null) {
      return reason.toString().split('.').last; // Fallback to enum name
    }

    switch (translationKey) {
      case 'swapReasonColor':
        return l10n.swapReasonColor;
      case 'swapReasonSize':
        return l10n.swapReasonSize;
      case 'swapReasonBrand':
        return l10n.swapReasonBrand;
      case 'swapReasonOther':
        return l10n.other;
      default:
        return reason.toString().split('.').last; // Fallback
    }
  }
}

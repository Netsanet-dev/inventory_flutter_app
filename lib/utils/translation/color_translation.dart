import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class ColorTranslator {
  static const _colorTranslations = {
    ItemColors.red: 'itemColorRed',
    ItemColors.blue: 'itemColorBlue',
    ItemColors.yellow: 'itemColorYellow',
    ItemColors.black: 'itemColorBlack',
    ItemColors.white: 'itemColorWhite',
    ItemColors.green: 'itemColorGreen',
    ItemColors.orange: 'itemColorOrange',
    ItemColors.brown: 'itemColorBrown',
    ItemColors.grey: 'itemColorGrey',
    ItemColors.pink: 'itemColorPink',
    ItemColors.purple: 'itemColorPurple',
    ItemColors.silver: 'itemColorSilver',
    ItemColors.gold: 'itemColorGold',
    ItemColors.kaki: 'itemColorKaki',
    ItemColors.other: 'itemColorOther',
  };

  static String translateItemColor(ItemColors color, AppLocalizations l10n) {
    final translationKey = _colorTranslations[color];
    if (translationKey == null) {
      return color.toString().split('.').last; // Fallback to enum name
    }

    switch (translationKey) {
      case 'itemColorRed':
        return l10n.itemColorRed;
      case 'itemColorBlue':
        return l10n.itemColorBlue;
      case 'itemColorYellow':
        return l10n.itemColorYellow;
      case 'itemColorBlack':
        return l10n.itemColorBlack;
      case 'itemColorWhite':
        return l10n.itemColorWhite;
      case 'itemColorGreen':
        return l10n.itemColorGreen;
      case 'itemColorOrange':
        return l10n.itemColorOrange;
      case 'itemColorBrown':
        return l10n.itemColorBrown;
      case 'itemColorGrey':
        return l10n.itemColorGrey;
      case 'itemColorPink':
        return l10n.itemColorPink;
      case 'itemColorPurple':
        return l10n.itemColorPurple;
      case 'itemColorSilver':
        return l10n.itemColorSilver;
      case 'itemColorGold':
        return l10n.itemColorGold;
      case 'itemColorKaki':
        return l10n.itemColorKaki;
      case 'itemColorOther':
        return l10n.itemColorOther;
      default:
        return color.toString().split('.').last; // Fallback
    }
  }
}

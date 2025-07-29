import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class PaymentMethodTranslator {
  static const _paymentMethodTranslations = {
    PaymentMethod.bankTransfer: 'paymentWithbankTransfer',
    PaymentMethod.cash: 'paymentWithCash',
    PaymentMethod.check: 'paymentWithCheck',
    PaymentMethod.credit: 'creditNoPayment',
    PaymentMethod.barter: 'paymentInKind',
  };

  static String translatePaymentMethod(
    PaymentMethod paymentMethod,
    AppLocalizations l10n,
  ) {
    final translationKey = _paymentMethodTranslations[paymentMethod];

    if (translationKey == null) {
      return paymentMethod.toString().split('.').last;
    }

    switch (translationKey) {
      case 'paymentWithbankTransfer':
        return l10n.paymentWithBankTransfer;
      case 'paymentWithCash':
        return l10n.paymentWithCash;
      case 'paymentWithCheck':
        return l10n.paymentWithCheck;
      case 'creditNoPayment':
        return l10n.creditNoPayment;
      case 'paymentInKind':
        return l10n.paymentInKind;
      default:
        return paymentMethod.toString().split('.').last;
    }
  }
}

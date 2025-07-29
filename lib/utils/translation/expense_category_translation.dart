import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class ExpenseCategoryTranslation {
  static const _expenseCategoryTranslations = {
    ExpenseCategory.employeeExpense: 'employeeExpense',
    ExpenseCategory.guardExpense: 'guardExpense',
    ExpenseCategory.houseRent: 'houseRent',
    ExpenseCategory.food: 'food',
    ExpenseCategory.transportation: 'transportation',
    ExpenseCategory.goodsTransport: 'goodsTransport',
    ExpenseCategory.festal: 'festal',
    ExpenseCategory.waste: 'waste',
    ExpenseCategory.packaging: 'packaging',
    ExpenseCategory.commission: 'commission',
    ExpenseCategory.militia: 'militia',
    ExpenseCategory.warehouse: 'warehouse',
    ExpenseCategory.other: 'other',
  };

  static String translateExpenseCategory(
    ExpenseCategory expeneCategory,
    AppLocalizations l10n,
  ) {
    final translationKey = _expenseCategoryTranslations[expeneCategory];

    if (translationKey == null) {
      return expeneCategory.toString().split('.').last;
    }

    switch (translationKey) {
      case 'employeeExpense':
        return l10n.employeeExpense;
      case 'guardExpense':
        return l10n.guardExpense;
      case 'houseRent':
        return l10n.houseRent;
      case 'food':
        return l10n.food;
      case 'transportation':
        return l10n.transportation;
      case 'goodsTransport':
        return l10n.goodsTransport;
      case 'festal':
        return l10n.festal;
      case 'waste':
        return l10n.waste;
      case 'packaging':
        return l10n.packaging;
      case 'commission':
        return l10n.commission;
      case 'militia':
        return l10n.militia;
      case 'warehouse':
        return l10n.warehouse;
      case 'other':
        return l10n.other;
      default:
        return expeneCategory.toString().split('.').last;
    }
  }
}

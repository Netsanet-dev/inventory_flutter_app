import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/shared/widgets/app_animated_icon.dart';
import 'package:inventory_flutter_app/utils/app_colors.dart';

import 'nav_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  static final List<Widget> _navigators = [
    Navigator(
      key: NavigationController.navigatorKeys[0],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const DashboardScreen()),
    ),
    Navigator(
      key: NavigationController.navigatorKeys[1],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const PurchaseScreen()),
    ),
    Navigator(
      key: NavigationController.navigatorKeys[2],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const SalesScreen()),
    ),
    Navigator(
      key: NavigationController.navigatorKeys[3],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const ExpenseScreen()),
    ),
    Navigator(
      key: NavigationController.navigatorKeys[4],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const RentalScreen()),
    ),
    Navigator(
      key: NavigationController.navigatorKeys[5],
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const SettingScreen()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final controller = Get.find<NavigationController>(tag: 'nav_controller');
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isLargeScreen = constraints.maxWidth >= 600;
        final isVeryLargeScreen = constraints.maxWidth > 1200;

        // Define destinations with FontAwesomeIcons optimized for inventory/finance
        final List<Map<String, dynamic>> destinationsData = [
          {
            'icon': FontAwesomeIcons.gaugeHigh,
            'selectedIcon': FontAwesomeIcons.gauge,
            'label': l10n.dashboard,
            'tooltip': l10n.dashboard,
          },
          {
            'icon': FontAwesomeIcons.cartPlus,
            'selectedIcon': FontAwesomeIcons.cartShopping,
            'label': l10n.purchase,
            'tooltip': l10n.purchase,
          },
          {
            'icon': FontAwesomeIcons.moneyBillTrendUp,
            'selectedIcon': FontAwesomeIcons.moneyCheckDollar,
            'label': l10n.sales,
            'tooltip': l10n.sales,
          },
          {
            'icon': FontAwesomeIcons.receipt,
            'selectedIcon': FontAwesomeIcons.fileInvoiceDollar,
            'label': l10n.expense,
            'tooltip': l10n.expense,
          },
          {
            'icon': FontAwesomeIcons.chartLine,
            'selectedIcon': FontAwesomeIcons.chartBar,
            'label': l10n.analytics, // Placeholder for CategoryScreen
            'tooltip': l10n.analytics,
          },
          {
            'icon': FontAwesomeIcons.gear,
            'selectedIcon': FontAwesomeIcons.gears,
            'label': l10n.setting,
            'tooltip': l10n.setting,
          },
        ];

        // Create NavigationBar destinations
        final barDestinations = destinationsData.asMap().entries.map((entry) {
          final index = entry.key;
          final data = entry.value;
          return NavigationDestination(
            icon: Semantics(
              label: data['label'] as String,
              child: AppAnimatedIcon(
                icon: Icon(
                  data['icon'] as IconData,
                  color: isDarkMode
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                  size: 24,
                ),
                selected: controller.selectedIndex.value == index,
              ),
            ),
            selectedIcon: Semantics(
              label: data['label'] as String,
              child: AppAnimatedIcon(
                icon: Icon(
                  data['selectedIcon'] as IconData,
                  color: AppColors.primary,
                  size: 24,
                ),
                selected: true,
              ),
            ),
            label: constraints.maxWidth >= 400 ? data['label'] as String : '',
            tooltip: data['tooltip'] as String,
          );
        }).toList();

        // Create NavigationRail destinations
        final railDestinations = destinationsData.asMap().entries.map((entry) {
          final index = entry.key;
          final data = entry.value;
          return NavigationRailDestination(
            icon: Semantics(
              label: data['label'] as String,
              child: Tooltip(
                message: data['tooltip'] as String,
                child: AppAnimatedIcon(
                  icon: Icon(
                    data['icon'] as IconData,
                    color: isDarkMode
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                    size: 24,
                  ),
                  selected: controller.selectedIndex.value == index,
                ),
              ),
            ),
            selectedIcon: Semantics(
              label: data['label'] as String,
              child: Tooltip(
                message: data['tooltip'] as String,
                child: AppAnimatedIcon(
                  icon: Icon(
                    data['selectedIcon'] as IconData,
                    color: AppColors.primary,
                    size: 24,
                  ),
                  selected: true,
                ),
              ),
            ),
            label: Text(
              data['label'] as String,
              style: TextStyle(
                fontSize: 12,
                color: isDarkMode
                    ? AppColors.textPrimaryDark
                    : AppColors.textPrimaryLight,
              ),
            ),
          );
        }).toList();

        return Scaffold(
          body: Row(
            children: [
              if (isLargeScreen)
                NavigationRail(
                  backgroundColor: isDarkMode
                      ? AppColors.surfaceDark
                      : AppColors.surfaceLight,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: controller.onDestinationSelected,
                  labelType: isVeryLargeScreen
                      ? NavigationRailLabelType.none
                      : NavigationRailLabelType.all,
                  destinations: railDestinations,
                  selectedIconTheme: const IconThemeData(
                    color: AppColors.primary,
                    size: 26,
                  ),
                  unselectedIconTheme: IconThemeData(
                    color: isDarkMode
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                    size: 24,
                  ),
                  groupAlignment: -1.0,
                  extended: isVeryLargeScreen,
                  minWidth: 80,
                  trailing: isVeryLargeScreen
                      ? const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text(
                            'Inventory App',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : null,
                ),
              Expanded(
                child: Obx(
                  () => IndexedStack(
                    index: controller.selectedIndex.value,
                    children: _navigators,
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: isLargeScreen
              ? null
              : Obx(
                  () => NavigationBar(
                    height: 64,
                    elevation: 2,
                    backgroundColor: isDarkMode
                        ? AppColors.surfaceDark
                        : AppColors.surfaceLight,
                    selectedIndex: controller.selectedIndex.value,
                    onDestinationSelected: controller.onDestinationSelected,
                    destinations: barDestinations,
                    labelBehavior: constraints.maxWidth >= 400
                        ? NavigationDestinationLabelBehavior.alwaysShow
                        : NavigationDestinationLabelBehavior.alwaysHide,
                  ),
                ),
        );
      },
    );
  }
}

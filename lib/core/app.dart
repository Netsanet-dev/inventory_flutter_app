import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_flutter_app/features/appConfig/presentation/controller/app_config_controller.dart';
import 'package:inventory_flutter_app/generated/app_localizations.dart';
import 'package:inventory_flutter_app/shared/main_binding.dart';
import 'package:inventory_flutter_app/shared/nav_menu.dart';
import 'package:inventory_flutter_app/utils/app_colors.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class InventoryApp extends StatelessWidget {
  const InventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppConfigController controller = Get.find<AppConfigController>();
    return Obx(() {
      if (controller.errorMessage.value.isNotEmpty) {
        return MaterialApp(
          title: 'Inventory App',
          home: Scaffold(
            body: Center(child: Text('Error: ${controller.errorMessage}')),
          ),
        );
      }

      final config = controller.config.value;
      final shopName = config.shopName.isEmpty
          ? (AppLocalizations.of(context)?.inventoryApp ?? 'Inventory App')
          : config.shopName;

      return GetMaterialApp(
        title: shopName,
        debugShowCheckedModeBanner: false,
        theme: controller.selectedTheme.value == AppTheme.dark
            ? AppColors.darkTheme()
            : AppColors.lightTheme(),
        themeMode: controller.themeMode,
        home: const NavigationMenu(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: controller.locale.value,
        fallbackLocale: const Locale('en'),
        initialBinding: MainBinding(),
      );
    });
  }
}

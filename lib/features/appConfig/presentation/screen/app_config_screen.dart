// lib/features/app_config/presentation/screens/app_config_screen.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_flutter_app/features/appConfig/presentation/controller/app_config_controller.dart';
import 'package:inventory_flutter_app/utils/app_enum_constants.dart';

class AppConfigScreen extends StatelessWidget {
  const AppConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AppConfigController>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('App Configuration'), elevation: 0),
      body: Obx(() {
        final config = controller.config.value;

        const SizedBox sectionSpacer = SizedBox(height: 24);
        const Divider sectionDivider = Divider(
          height: 1,
          indent: 16,
          endIndent: 16,
        );

        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _sectionHeader(context, 'Business Info'),
            _SettingTile(
              icon: Icons.person_outline,
              title: 'Owner Name',
              subtitle: config.ownerName.isEmpty ? 'Not set' : config.ownerName,
              onTap: () => _editText(
                context,
                controller,
                'Owner Name',
                config.ownerName,
                controller.ownerNameController,
              ),
            ),
            sectionDivider,
            _SettingTile(
              icon: Icons.storefront_outlined,
              title: 'Shop Name',
              subtitle: config.shopName.isEmpty ? 'Not set' : config.shopName,
              onTap: () => _editText(
                context,
                controller,
                'Shop Name',
                config.shopName,
                controller.shopNameController,
              ),
            ),
            sectionDivider,
            _SettingTile(
              icon: Icons.phone_outlined,
              title: 'Phone Number',
              subtitle: config.phoneNumber?.isEmpty ?? true
                  ? 'Not set'
                  : config.phoneNumber!,
              onTap: () => _editText(
                context,
                controller,
                'Phone Number',
                config.phoneNumber ?? '',
                controller.phoneNumberController,
                keyboardType: TextInputType.phone,
              ),
            ),
            sectionDivider,
            _SettingTile(
              icon: Icons.location_on_outlined,
              title: 'Shop Address',
              subtitle: config.shopAddress?.isEmpty ?? true
                  ? 'Not set'
                  : config.shopAddress!,
              onTap: () => _editText(
                context,
                controller,
                'Shop Address',
                config.shopAddress ?? '',
                controller.shopAddressController,
              ),
            ),
            sectionDivider,
            _SettingTile(
              icon: Icons.receipt_long_outlined,
              title: 'TIN Number',
              subtitle: config.tinNumber?.isEmpty ?? true
                  ? 'Not set'
                  : config.tinNumber!,
              onTap: () => _editText(
                context,
                controller,
                'TIN Number',
                config.tinNumber ?? '',
                controller.tinNumberController,
              ),
            ),
            sectionSpacer,
            _sectionHeader(context, 'Settings'),
            _SettingTile(
              icon: Icons.warning_amber_outlined,
              title: 'Inventory Alert Level',
              subtitle: config.inventoryAlertLevel.toString(),
              onTap: () => _editText(
                context,
                controller,
                'Inventory Alert Level',
                config.inventoryAlertLevel.toString(),
                controller.inventoryAlertLevelController,
                keyboardType: TextInputType.number,
              ),
            ),
            sectionDivider,
            _SettingTile(
              icon: Icons.percent,
              title: 'Tax Rate',
              subtitle: '${config.taxRate}%',
              onTap: () => _editText(
                context,
                controller,
                'Tax Rate',
                config.taxRate.toString(),
                controller.taxRateController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            sectionDivider,
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () async {
                  final result = await Get.dialog<Currency>(
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: const Text('Select Currency'),
                      content: SizedBox(
                        width: Get.width > 600
                            ? Get.width * 0.4
                            : Get.width * 0.8,
                        height: Get.height * 0.4,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: Currency.values.length,
                          itemBuilder: (context, index) {
                            final currency = Currency.values[index];
                            return ListTile(
                              title: Text(currency.name),
                              trailing:
                                  controller.selectedCurrency.value == currency
                                  ? Icon(
                                      Icons.check_circle,
                                      color: theme.colorScheme.primary,
                                    )
                                  : null,
                              onTap: () => Get.back(result: currency),
                            );
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Get.back(),
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                  );
                  if (result != null) {
                    controller.selectedCurrency.value = result;
                    await controller.saveConfig();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_money_outlined,
                        color: theme.colorScheme.onSurface,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Currency',
                              style: theme.textTheme.titleMedium,
                            ),
                            Text(
                              controller.selectedCurrency.value.name,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey.shade600,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            sectionDivider,
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () async => await controller.pickLogo(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.image_outlined,
                        color: theme.colorScheme.onSurface,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Logo', style: theme.textTheme.titleMedium),
                            Text(
                              config.logoPath == null ||
                                      config.logoPath!.isEmpty
                                  ? 'Not set'
                                  : config.logoPath!,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (config.logoPath != null &&
                          config.logoPath!.isNotEmpty &&
                          File(config.logoPath!).existsSync())
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.file(
                            File(config.logoPath!),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.image_not_supported,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                          ),
                        )
                      else
                        Icon(
                          Icons.add_photo_alternate,
                          color: Colors.grey.shade600,
                          size: 40,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            sectionSpacer,
            _sectionHeader(context, 'Danger Zone'),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () async {
                  final confirm = await Get.dialog<bool>(
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: const Text('Confirm Reset'),
                      content: const Text(
                        'Reset all settings to default? This action cannot be undone.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Get.back(result: false),
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () => Get.back(result: true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.error,
                            foregroundColor: theme.colorScheme.onError,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                    barrierDismissible: false,
                  );
                  if (confirm == true) await controller.resetConfig();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.restore_outlined,
                        color: theme.colorScheme.error,
                        size: 28,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Reset to Default',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.warning_amber_outlined,
                        color: theme.colorScheme.error,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (controller.errorMessage.value.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  controller.errorMessage.value,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
          ],
        );
      }),
    );
  }

  Widget _sectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      child: Text(
        title.toUpperCase(),
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Future<void> _editText(
    BuildContext context,
    AppConfigController controller,
    String title,
    String initialValue,
    TextEditingController targetController, {
    TextInputType? keyboardType,
  }) async {
    final result = await _showTextInputDialog(
      context,
      title: title,
      initialValue: initialValue,
      keyboardType: keyboardType,
    );
    if (result != null && result.trim().isNotEmpty) {
      targetController.text = result.trim();
      await controller.saveConfig();
    }
  }

  Future<String?> _showTextInputDialog(
    BuildContext context, {
    required String title,
    String initialValue = '',
    TextInputType? keyboardType,
  }) async {
    final TextEditingController textEditingController = TextEditingController(
      text: initialValue,
    );
    final theme = Theme.of(context);

    return await Get.dialog<String>(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: TextField(
          controller: textEditingController,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: 'Enter $title',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'Cancel',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Get.back(result: textEditingController.text),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}

class _SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SettingTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Icon(icon, color: theme.colorScheme.onSurface),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: theme.textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade600,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

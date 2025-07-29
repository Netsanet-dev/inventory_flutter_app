import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Utility class for displaying various types of snackbar messages using GetX.
/// Follows the DRY principle by centralizing common snackbar properties.
class SnackbarMessages {
  /// Private helper method to show a snackbar with common properties.
  /// This method encapsulates the repetitive `Get.snackbar` call.
  static void _showSnackbar(
    String? title,
    String message, {
    required Color backgroundColor,
    String defaultTitle = 'Info', // Default title for general info messages
    Duration duration = const Duration(seconds: 3),
  }) {
    Get.snackbar(
      title ?? defaultTitle, // Use provided title or default
      message,
      snackPosition: SnackPosition.BOTTOM, // Always show at the bottom
      backgroundColor: backgroundColor, // Dynamic background color
      colorText: Colors.white, // Always white text for contrast
      margin: const EdgeInsets.all(10), // Consistent margin
      duration: duration, // Configurable duration
    );
  }

  /// Shows an error snackbar.
  static void showError(
    String? title,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.red[600]!, // Specific background for error
      defaultTitle: 'Error', // Specific default title for error
      duration: duration,
    );
  }

  /// Shows a success snackbar.
  static void showSuccess(
    String? title,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.green[600]!, // Specific background for success
      defaultTitle: 'Success', // Specific default title for success
      duration: duration,
    );
  }

  /// Shows an informational snackbar.
  static void showInfo(
    String? title,
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    _showSnackbar(
      title,
      message,
      backgroundColor: Colors.blue[600]!, // Specific background for info
      defaultTitle: 'Info', // Specific default title for info
      duration: duration,
    );
  }
}
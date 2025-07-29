import 'package:flutter/material.dart';

class ControllerManager<T> {
  final Map<String, Map<String, TextEditingController>> _controllers = {};
  final String Function(T model) _getId;

  Map<String, Map<String, TextEditingController>> get controllers =>
      Map.unmodifiable(_controllers);

  ControllerManager({required String Function(T model) getId}) : _getId = getId;

  TextEditingController getController(
    T model,
    String key, {
    String? initialValue,
  }) {
    if (model == null) {
      throw ArgumentError('Model cannot be null');
    }
    if (key.isEmpty) {
      throw ArgumentError('Key cannot be empty');
    }

    final String modelId = _getId(model);
    if (modelId.isEmpty) {
      throw StateError('Model ID cannot be empty');
    }

    _controllers.putIfAbsent(modelId, () => {});

    final existingController = _controllers[modelId]![key];
    if (existingController != null) {
      return existingController;
    }

    final newController = TextEditingController(text: initialValue ?? '');
    _controllers[modelId]![key] = newController;

    // Add a listener to the new controller to log user input
    newController.addListener(() {});

    return newController;
  }

  void updateController(T model, String key, String value) {
    final modelId = _getId(model);
    if (modelId.isEmpty || key.isEmpty) return;

    final controller = _controllers[modelId]?[key];
    if (controller != null) {
      final selection = controller.selection;

      final isUserTyping = selection.baseOffset != -1 && selection.isValid;
      final isDifferent = controller.text != value;

      if (!isUserTyping && isDifferent) {
        controller.text = value;

        // Restore selection to end (optional)
        controller.selection = TextSelection.collapsed(
          offset: controller.text.length,
        );
      } else {}
    } else {
      final newController = TextEditingController(text: value);
      _controllers.putIfAbsent(modelId, () => {})[key] = newController;
      newController.addListener(() {});
    }
  }

  void disposeAll() {
    for (final modelControllers in _controllers.values) {
      for (final controller in modelControllers.values) {
        controller.dispose();
      }
    }
    _controllers.clear();
  }

  void disposeForModel(T model) {
    if (model == null) {
      return;
    }

    final String modelId = _getId(model);
    if (modelId.isEmpty) {
      return;
    }

    final modelControllers = _controllers[modelId];
    if (modelControllers != null) {
      for (final controller in modelControllers.values) {
        controller.dispose();
      }
      _controllers.remove(modelId);
    } else {}
  }

  bool hasController(T model, String key) {
    if (model == null || key.isEmpty) {
      return false;
    }
    final String modelId = _getId(model);
    final bool exists =
        _controllers.containsKey(modelId) &&
        _controllers[modelId]!.containsKey(key);
    return exists;
  }
}

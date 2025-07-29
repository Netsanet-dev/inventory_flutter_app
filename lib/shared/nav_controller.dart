import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static final List<GlobalKey<NavigatorState>> navigatorKeys = List.generate(
    6,
    (_) => GlobalKey<NavigatorState>(),
  );

  final Rx<int> selectedIndex = 0.obs;

  void onDestinationSelected(int index) {
    if (selectedIndex.value != index) {
      selectedIndex.value = index;
    } else {
      navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    }
  }

  @override
  void onClose() {
    selectedIndex.close();
    super.onClose();
  }
}

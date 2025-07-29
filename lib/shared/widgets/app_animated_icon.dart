// Widget for animated icon with scale transition
import 'package:flutter/material.dart';

class AppAnimatedIcon extends StatelessWidget {
  final Icon icon;
  final bool selected;

  const AppAnimatedIcon({
    super.key,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: selected ? 0.85 : 0.8,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      child: icon,
    );
  }
}

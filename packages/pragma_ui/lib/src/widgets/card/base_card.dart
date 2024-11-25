import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

/// {@template base_card}
/// Base card for card widgets.
/// {@endtemplate}
class BaseCard extends StatelessWidget {
  /// {@macro base_card}
  const BaseCard({
    super.key,
    this.color = Colors.white,
    this.padding,
    required this.child,
    this.border,
  });

  /// Background color
  final Color color;

  /// Padding
  final EdgeInsets? padding;

  /// Child widget.
  final Widget child;

  /// Border
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: padding != null
          ? Padding(
              padding: padding!,
              child: child,
            )
          : child,
    );
  }
}

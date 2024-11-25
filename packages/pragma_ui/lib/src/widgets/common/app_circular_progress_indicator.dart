import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppColors.primary,
      strokeCap: StrokeCap.round,
      backgroundColor: Colors.transparent,
    );
  }
}

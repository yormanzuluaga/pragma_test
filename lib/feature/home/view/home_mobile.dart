import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(child: widget.child),
    );
  }
}

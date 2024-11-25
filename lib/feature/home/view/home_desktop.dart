import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Expanded(
        child: widget.child,
      ),
    );
  }
}

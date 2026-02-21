import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:invoicing_dashboard/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const Center(child: Text('Mobile')),
        tabletLayout: (context) => const Center(child: Text('Tablet')),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

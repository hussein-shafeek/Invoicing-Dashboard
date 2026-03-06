import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expensess.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}

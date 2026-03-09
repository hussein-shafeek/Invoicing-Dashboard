import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/All_expenses_and_quick_invoice_section.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
      ],
    );
  }
}

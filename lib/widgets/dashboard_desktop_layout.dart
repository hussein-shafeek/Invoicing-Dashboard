import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/All_expenses_and_quick_invoice_section.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 24),
        Expanded(flex: 2, child: const AllExpensesAndQuickInvoiceSection()),
        const SizedBox(width: 24),
        Expanded(flex: 1, child: const MyCardsAndTransctionHistorySection()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/All_expenses_and_quick_invoice_section.dart';
import 'package:invoicing_dashboard/widgets/income_section.dart';
import 'package:invoicing_dashboard/widgets/my_cards_and_transction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}

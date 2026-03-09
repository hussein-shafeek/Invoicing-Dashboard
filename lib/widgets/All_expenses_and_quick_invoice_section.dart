import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expensess.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 24),
      ],
    );
  }
}

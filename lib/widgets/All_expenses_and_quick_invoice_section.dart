import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expensess.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuickInvoice()),
        // SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}

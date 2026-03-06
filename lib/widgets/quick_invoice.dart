import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_back_ground_container.dart';
import 'package:invoicing_dashboard/widgets/latest_transaction_list_view.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [QuickInvoiceHeader(), LatestTransactionListView()],
      ),
    );
  }
}

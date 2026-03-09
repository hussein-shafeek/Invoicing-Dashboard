import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_back_ground_container.dart';
import 'package:invoicing_dashboard/widgets/latest_transaction.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_form%20.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xFFF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

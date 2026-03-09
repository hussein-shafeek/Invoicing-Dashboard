import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_button.dart';
import 'package:invoicing_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hintText: "Type item name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: "Item mount", hintText: "USD"),
            ),
          ],
        ),

        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xFF4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}

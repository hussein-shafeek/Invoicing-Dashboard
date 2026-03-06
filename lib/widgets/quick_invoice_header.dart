import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: Icon(Icons.add, color: const Color(0xFF4EB7F2))),
        ),
      ],
    );
  }
}

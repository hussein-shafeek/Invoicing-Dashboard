import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_header.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 400),
        tween: Tween(begin: 0, end: 1),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Transform.translate(
              offset: Offset(0, 10 * (1 - value)),
              child: child,
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: allExpensesItemModel.image,
              imageBackgroundColor: Colors.white.withValues(alpha: 0.10),
              imageColor: Colors.white,
            ),
            const SizedBox(height: 34),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: const Color(0xFFFAFAFA)),
            ),
            const SizedBox(height: 16),
            Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

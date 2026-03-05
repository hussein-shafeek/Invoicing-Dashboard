import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/widgets/active_all_expensess_item_extends_stateless_widget.dart';
import 'package:invoicing_dashboard/widgets/in_active_all_expensess_item_extends_stateless_widget.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.98, end: 1.0).animate(animation),
            child: child,
          ),
        );
      },
      child: isSelected
          ? ActiveAllExpensessItem(
              key: const ValueKey('active'),
              allExpensesItemModel: allExpensesItemModel,
            )
          : InActiveAllExpensessItem(
              key: const ValueKey('inactive'),
              allExpensesItemModel: allExpensesItemModel,
            ),
    );
  }
}

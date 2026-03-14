import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_Item_list_view.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_header.dart';
import 'package:invoicing_dashboard/widgets/custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

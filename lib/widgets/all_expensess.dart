import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/utils/app_images.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_Item.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_Item_list_view.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

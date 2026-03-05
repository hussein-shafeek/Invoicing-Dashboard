import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/utils/app_images.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_Item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2026',
      price: r'$20.800',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2026',
      price: r'$20.800',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2026',
      price: r'$20.800',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateSelectedIndex(0),
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateSelectedIndex(1),
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateSelectedIndex(2),
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

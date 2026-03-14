import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/transction_model.dart';
import 'package:invoicing_dashboard/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      transactionType: TransactionType.withdrawal,
    ),
    TransctionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      transactionType: TransactionType.income,
    ),
    TransctionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      transactionType: TransactionType.income,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
    // or
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransctionItem(transctionModel: items[index]);
    //   },
    // );
  }
}

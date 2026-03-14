import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_background_container.dart';
import 'package:invoicing_dashboard/widgets/my_cards_section.dart';
import 'package:invoicing_dashboard/widgets/transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}

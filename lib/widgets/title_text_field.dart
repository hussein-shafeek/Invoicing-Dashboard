import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}

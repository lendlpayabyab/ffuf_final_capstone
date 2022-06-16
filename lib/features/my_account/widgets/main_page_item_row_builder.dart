import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainPageItemRowBuilder extends StatelessWidget {
  const MainPageItemRowBuilder({
    required this.label,
    Key? key,
    this.value,
    this.valueString,
  }) : super(key: key);

  final String label;
  final int? value;
  final String? valueString;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTheme.theme.textTheme.labelMedium,
        ),
        Row(
          children: [
            Text(
              (value != null) ? NumberFormat('00').format(value) : valueString!,
              style: AppTheme.theme.textTheme.labelLarge,
            ),
            const SizedBox(width: 12),
          ],
        ),
      ],
    );
  }
}

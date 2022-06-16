import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    required this.onTap,
    required this.label,
    required this.iconWidget,
    Key? key,
  }) : super(key: key);

  final String label;
  final Widget iconWidget;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: kBlackButtonHeight,
        color: AppTheme.mainContentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(label, style: AppTheme.theme.textTheme.titleMedium?.copyWith(color: AppTheme.textOnCardColor)),
            const SizedBox(width: 13),
            iconWidget,
          ],
        ),
      ),
    );
  }
}

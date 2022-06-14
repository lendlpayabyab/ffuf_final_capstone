import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BusinessCardTabButton extends StatelessWidget {
  const BusinessCardTabButton({
    required this.onTap,
    required this.thisButtonIndex,
    required this.selectedIndex,
    required this.text,
    required this.width,
    Key? key,
  }) : super(key: key);

  final Function onTap;
  final int thisButtonIndex;
  final int selectedIndex;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    final isSelected = thisButtonIndex == selectedIndex;
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: isSelected
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.selectionIndicatorColor,
                    width: 4,
                  ),
                ),
              )
            : null,
        height: 50,
        width: width,
        child: Stack(
          children: [
            if (isSelected)
              SvgPicture.asset(
                'assets/backgrounds/shading.svg',
                width: width,
                fit: BoxFit.cover,
              ),
            Center(
              child: Text(
                text,
                style: AppTheme.theme.textTheme.bodyMedium!
                    .copyWith(color: selectedIndex == thisButtonIndex ? null : AppTheme.unselectedColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

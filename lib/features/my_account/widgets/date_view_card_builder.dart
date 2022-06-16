import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DateViewCardBuilder extends StatelessWidget {
  const DateViewCardBuilder({
    required this.dateCoverage,
    required this.buttonLabel,
    required this.contextSafeWidth,
    required this.buttonTap,
    Key? key,
  }) : super(key: key);

  final String dateCoverage;
  final String buttonLabel;
  final double contextSafeWidth;
  final Function buttonTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: contextSafeWidth * .17,
          child: SvgPicture.asset('assets/icons/calendar.svg'),
        ),
        const SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: contextSafeWidth * 0.005),
            Text(dateCoverage, style: AppTheme.theme.textTheme.labelLarge),
            const SizedBox(height: 15),
            CustomFlatButton(
              onTap: () => buttonTap(),
              label: buttonLabel,
              iconWidget: SvgPicture.asset('assets/icons/paper_plane_white.svg'),
            ),
          ],
        ),
      ],
    );
  }
}

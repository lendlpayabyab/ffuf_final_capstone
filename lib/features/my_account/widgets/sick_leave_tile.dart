import 'package:ffuf_final_capstone/features/my_account/widgets/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SickLeaveTile extends StatelessWidget {
  const SickLeaveTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(
      builder: (context, height, width) => Container(
        color: Colors.white,
        width: width,
        padding: kGlobalAppPadding.copyWith(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Krankheitstage',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            LeavesRowBuilder(label: 'Insgesamt', value: 3),
            const SizedBox(height: 16),
            Row(
              children: [
                CustomFlatButton(
                  onTap: () {
                    print('Krankheit einreichen');
                  },
                  label: 'Krankheit einreichen',
                  iconWidget: SvgPicture.asset('assets/icons/add_white.svg'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

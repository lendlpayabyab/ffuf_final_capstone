import 'package:ffuf_final_capstone/features/my_account/widgets/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class ProjectHoursTile extends StatelessWidget {
  const ProjectHoursTile({Key? key}) : super(key: key);

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
              'AZ Konto',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            MainPageItemRowBuilder(label: 'Stunden', valueString: '100 / 250'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

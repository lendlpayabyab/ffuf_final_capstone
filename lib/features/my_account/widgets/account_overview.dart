import 'package:ffuf_final_capstone/features/my_account/widgets/_export.dart';
import 'package:ffuf_final_capstone/features/my_account/widgets/date_view_card_builder.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';

class AccountOverview extends StatelessWidget {
  const AccountOverview({
    required this.user,
    required this.supervisor,
    Key? key,
  }) : super(key: key);

  final User user;
  final User supervisor;

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
              'Mein Konto',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            ProfileCardBuilder(user: user, contextSafeWidth: width),
            const SizedBox(height: 35),
            Text(
              'Vorgesetzte(r)',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 10),
            SupervisorCardBuilder(user: supervisor, contextSafeWidth: width),
            // used a builder for possible list of supervisors but implementation right now
            // has only one supervisor per user. for future modifications
            const SizedBox(height: 30),
            Text(
              'Wochenbericht',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 22),
            DateViewCardBuilder(
              dateCoverage: '12.06 - 19.06.2022',
              buttonLabel: 'Wochenbericht zuschicken',
              contextSafeWidth: width,
              buttonTap: () {
                print('Wochenbericht zuschicken');
              },
            ),
            const SizedBox(height: 30),
            Text(
              'Monatsbericht',
              style: AppTheme.theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 22),
            DateViewCardBuilder(
              dateCoverage: 'June 2022',
              buttonLabel: 'Monatsbericht erstellen',
              contextSafeWidth: width,
              buttonTap: () {
                print('Monatsbericht erstellen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

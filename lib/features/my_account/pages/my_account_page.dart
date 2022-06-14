import 'package:ffuf_final_capstone/features/my_account/widgets/_export.dart';
import 'package:ffuf_final_capstone/features/my_account/widgets/leaves_overview.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({
    required this.loggedInUser,
    required this.userList,
    Key? key,
  }) : super(key: key);

  final User loggedInUser;
  final List<User> userList;

  @override
  Widget build(BuildContext context) {

    const _kWidgetSpacer = 16.0;

    final supervisorIndex = userList.indexWhere((element) => element.userId == loggedInUser.supervisorId);
    final supervisor = userList[supervisorIndex];

    return Container(
      color: AppTheme.secondaryColor,
      child: SingleChildScrollView(
        padding: kGlobalAppPadding,
        child: Column(
          children: [
            AccountOverview(
              user: loggedInUser,
              supervisor: supervisor,
            ),
            const SizedBox(height: _kWidgetSpacer),
            LeavesOverview(),
            const SizedBox(height: _kWidgetSpacer),
            SickLeaveTile(),
            const SizedBox(height: _kWidgetSpacer),
            ProjectHoursTile(),
          ],
        ),
      ),
    );
  }
}

import 'package:ffuf_final_capstone/features/my_account/widgets/supervisor_tile_clip_path.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class SupervisorCardBuilder extends StatelessWidget {
  const SupervisorCardBuilder({
    required this.user,
    required this.contextSafeWidth,
    Key? key,
  }) : super(key: key);

  final User user;
  final double contextSafeWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(user.profileImageUrl),
          radius: contextSafeWidth * .085,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: contextSafeWidth * 0.025),
            Text('${user.firstName} ${user.lastName}', style: AppTheme.theme.textTheme.labelLarge),
            Text(user.email, style: AppTheme.theme.textTheme.labelSmall),
            const SizedBox(height: 12),
            ClipPath(
              clipper: SupervisorTileClipPath(),
              child: Container(
                decoration: const BoxDecoration(
                  color: AppTheme.mainContentColor,
                  border: Border(
                    left: BorderSide(
                      color: AppTheme.selectionIndicatorColor,
                      width: 3,
                    ),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(7, 4, 20, 4),
                child: Text('0160 - 123456789', style: AppTheme.theme.textTheme.labelSmall?.copyWith(color: AppTheme.textOnCardColor),),
              ),
            )
          ],
        ),
      ],
    );
  }
}

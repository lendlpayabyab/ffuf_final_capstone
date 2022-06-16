import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
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
          backgroundImage: const AssetImage('assets/backgrounds/loading.gif'),
          backgroundColor: Colors.transparent,
          radius: contextSafeWidth * .085,
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.profileImageUrl),
            backgroundColor: Colors.transparent,
            radius: contextSafeWidth * .085,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: contextSafeWidth * 0.025),
            Text('${user.firstName} ${user.lastName}', style: AppTheme.theme.textTheme.labelLarge),
            Text(user.email, style: AppTheme.theme.textTheme.labelSmall),
            const SizedBox(height: 12),
            const TrapezoidTileBuilder(label: '0160 - 123456789',),
          ],
        ),
      ],
    );
  }
}

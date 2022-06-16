import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/trapezoid_tile_clip_path.dart';
import 'package:flutter/material.dart';

class TrapezoidTileBuilder extends StatelessWidget {
  const TrapezoidTileBuilder({
    required this.label,
    Key? key,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidTileClipPath(),
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
        child: Text(label, style: AppTheme.theme.textTheme.labelSmall?.copyWith(color: AppTheme.textOnCardColor),),
      ),
    );
  }
}

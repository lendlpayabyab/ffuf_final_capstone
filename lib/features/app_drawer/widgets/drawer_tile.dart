import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    required this.logoUrl,
    required this.label,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String logoUrl;
  final String label;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kGlobalAppPadding,
      child: InkWell(
        onTap: () => onTap(),
        child: IntrinsicWidth(
          child: Row(
            children: [
              SizedBox(
                width: kAppDrawerItemWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: kItemPadding,
                      child: SvgPicture.asset(
                        logoUrl,
                        color: isSelected ? AppTheme.mainContentColor : AppTheme.passiveElementColor,
                        width: kAppDrawerIconWidth,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: isSelected
                            ? const Border(bottom: BorderSide(color: AppTheme.selectionIndicatorColor, width: 3.0))
                            : null,
                      ),
                      padding: kItemPadding.copyWith(left: 3, right: 3),
                      child: Text(
                        label,
                        style: AppTheme.theme.textTheme.titleMedium!
                            .copyWith(color: isSelected ? null : AppTheme.subTitleColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

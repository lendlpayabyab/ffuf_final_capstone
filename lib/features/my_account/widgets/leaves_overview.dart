import 'package:ffuf_final_capstone/features/my_account/widgets/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeavesOverview extends StatelessWidget {
  const LeavesOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _kSpacerHeight = 18.0;

    return ResponsiveSafeArea(
      builder: (context, height, width) => Column(
        children: [
          Container(
            color: Colors.white,
            width: width,
            padding: kGlobalAppPadding.copyWith(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Übersicht 2022',
                      style: AppTheme.theme.textTheme.bodyLarge,
                    ),
                    SvgPicture.asset('assets/icons/tree.svg'),
                  ],
                ),
                const SizedBox(height: _kSpacerHeight),
                MainPageItemRowBuilder(
                  label: 'Jahresurlaub',
                  value: 25,
                ),
                const SizedBox(height: _kSpacerHeight),
                MainPageItemRowBuilder(
                  label: 'Resturlaub EPOS',
                  value: 10,
                ),
                const SizedBox(height: _kSpacerHeight),
                MainPageItemRowBuilder(
                  label: 'Beantragt',
                  value: 8,
                ),
                const SizedBox(height: _kSpacerHeight),
                MainPageItemRowBuilder(
                  label: 'Übertrag Vorjahr',
                  value: 1,
                ),
                Text(
                  '(gültig bis 31.03.2021)',
                  style: AppTheme.theme.textTheme.labelSmall,
                ),
                const SizedBox(height: _kSpacerHeight),
                Row(
                  children: [
                    CustomFlatButton(
                      onTap: () {
                        print('Urlaub beantragen');
                      },
                      label: 'Urlaub beantragen',
                      iconWidget: SvgPicture.asset('assets/icons/add_white.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 95,
            color: AppTheme.passiveElementColor2,
            padding: kGlobalAppPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Aktuelles Budget', style: AppTheme.theme.textTheme.labelMedium,),
                CircleAvatar(
                  backgroundColor: AppTheme.wartezeitColor,
                  radius: 20.0,
                  child: Text('7', style: AppTheme.theme.textTheme.labelLarge?.copyWith(color: AppTheme.textOnCardColor),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

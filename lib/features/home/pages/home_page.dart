import 'package:ffuf_final_capstone/features/app_drawer/_export.dart';
import 'package:ffuf_final_capstone/features/business_card/_export.dart';
import 'package:ffuf_final_capstone/features/home/widgets/_export.dart';
import 'package:ffuf_final_capstone/features/my_account/_export.dart';
import 'package:ffuf_final_capstone/features/time_tracking/pages/_export.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.unionPageState,
    Key? key,
  }) : super(key: key);

  final UnionPageState<User> unionPageState;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int selectedTabIndex = 0;

  List<Widget> pages = [
    const MyAccountPageConnector(),
    const BusinessCardPageConnector(),
    const TimeTrackingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: SvgPicture.asset('assets/icons/menu.svg'),
            ),
          ),
        ),
        title: selectedTabIndex == 2
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    'Donnerstag',
                    style: AppTheme.theme.textTheme.bodyLarge,
                  ),
                  Row(
                    children: [
                      const TrapezoidTileBuilder(label: 'Offen'),
                      const SizedBox(width: 10),
                      Text(
                        '16.06.2022',
                        style: AppTheme.theme.textTheme.labelMedium?.copyWith(color: AppTheme.subTitleColor),
                      )
                    ],
                  ),
                ],
              )
            : null,
        titleSpacing: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (selectedTabIndex == 2)
                      CustomActionButton(
                        onTap: () {},
                        iconWidget: SvgPicture.asset('assets/icons/calendar_dotted.svg'),
                        borderRadius: 2,
                        fillColor: AppTheme.theme.scaffoldBackgroundColor,
                      ),
                    if (selectedTabIndex == 2)
                      CustomActionButton(
                        onTap: () {},
                        iconWidget: SvgPicture.asset('assets/icons/add_black.svg'),
                        borderRadius: 0,
                        fillColor: AppTheme.passiveElementColor,
                      ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: selectedTabIndex == 2 ? SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: FloatingActionButton.extended(
          backgroundColor: AppTheme.theme.scaffoldBackgroundColor,
          onPressed: () {},
          label: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width - 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '08 : 00 Std.',
                        style: AppTheme.theme.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
                      ),
                      Text(
                        'Arbeitszeiten insgesamt für Heute',
                        style: AppTheme.theme.textTheme.labelSmall?.copyWith(letterSpacing: 0),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: kBlackButtonHeight,
                  width: kBlackButtonHeight,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.mainContentColor,
                  ),
                  child: SvgPicture.asset('assets/icons/paper_plane_white.svg'),
                ),
              ],
            ),
          ),
        ),
      ) : null,
      drawer: AppDrawerPageConnector(onSelectTab: (index) => setState(() => selectedTabIndex = index)),
      body: widget.unionPageState.when(
        (value) => pages[selectedTabIndex],
        loading: () => LoadingPage(),
        error: (message) => EmptyPageWithMessage(message: message!),
      ),
    );
  }
}

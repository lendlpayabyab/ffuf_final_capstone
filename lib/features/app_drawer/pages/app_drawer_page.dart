import 'package:ffuf_final_capstone/features/app_drawer/widgets/drawer_tile.dart';
import 'package:ffuf_final_capstone/features/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    required this.onSelectTab,
    Key? key,
  }) : super(key: key);

  final Function(int) onSelectTab;

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  List<bool> isSelected = [true, false];

  static int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: SvgPicture.asset('assets/icons/close.svg'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 30, 16),
              child: SvgPicture.asset(
                'assets/logo/logo.svg',
                height: 32.0,
              ),
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            DrawerTile(
              isSelected: selectedTabIndex == 0 && true,
              label: 'Mein Konto',
              logoUrl: 'assets/icons/user_black.svg',
              onTap: () {
                setState(() {
                  selectedTabIndex = 0;
                });
                Navigator.of(context).pop();
                widget.onSelectTab(0);
              },
            ),
            DrawerTile(
              isSelected: selectedTabIndex == 1 && true,
              label: 'Visitenkarte',
              logoUrl: 'assets/icons/business_card.svg',
              onTap: () {
                setState(() {
                  selectedTabIndex = 1;
                });
                Navigator.of(context).pop();
                widget.onSelectTab(1);
              },
            ),
            DrawerTile(
              isSelected: selectedTabIndex == 2 && true,
              label: 'Zeiterfassung',
              logoUrl: 'assets/icons/time.svg',
              onTap: () {
                setState(() {
                  selectedTabIndex = 2;
                });
                Navigator.of(context).pop();
                widget.onSelectTab(2);
              },
            ),
            DrawerTile(
              isSelected: selectedTabIndex == 3 && true,
              label: 'Abmelden',
              logoUrl: 'assets/icons/close.svg',
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    title: Text('Abmelden'),
                    content: Text('Möchten Sie sich abmelden?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pushReplacementNamed(context, LoginPage.routeName),
                        child: const Text('Ja'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Nein'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ffuf_final_capstone/features/app_drawer/pages/_export.dart';
import 'package:ffuf_final_capstone/features/business_card/_export.dart';
import 'package:ffuf_final_capstone/features/my_account/_export.dart';
import 'package:ffuf_final_capstone/features/time_tracking/pages/time_tracking_page.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
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
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: SvgPicture.asset('assets/icons/menu.svg'),
          ),
        ),
      ),
      drawer: AppDrawer(onSelectTab: (index) => setState(() => selectedTabIndex = index)),
      body: widget.unionPageState.when(
        (value) => pages[selectedTabIndex],
        loading: () => LoadingPage(),
        error: (message) => EmptyPageWithMessage(message: message!),
      ),
    );
  }
}

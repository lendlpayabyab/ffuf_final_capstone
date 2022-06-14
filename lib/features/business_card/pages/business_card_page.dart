import 'package:ffuf_final_capstone/features/business_card/widgets/_export.dart';
import 'package:ffuf_final_capstone/models/user/user.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class BusinessCardPage extends StatefulWidget {
  const BusinessCardPage({
    required this.userList,
    required this.loggedInUser,
    Key? key,
  }) : super(key: key);

  final List<User> userList;
  final User loggedInUser;

  @override
  State<BusinessCardPage> createState() => _BusinessCardPageState();
}

class _BusinessCardPageState extends State<BusinessCardPage> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void onItemTap(int index) {
    _pageController!.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {

    final supervisorIndex = widget.userList.indexWhere((element) => element.userId == widget.loggedInUser.supervisorId);
    final supervisor = widget.userList[supervisorIndex];

    return ResponsiveSafeArea(
      builder: (context, height, width) => Column(
        children: [
          Container(
            color: AppTheme.secondaryColor,
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BusinessCardTabButton(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                      onItemTap(_selectedIndex);
                    });
                  },
                  thisButtonIndex: 0,
                  selectedIndex: _selectedIndex,
                  text: 'Meine Visitenkarte',
                  width: (width - 34) * 0.5,
                ),
                BusinessCardTabButton(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                      onItemTap(_selectedIndex);
                    });
                  },
                  thisButtonIndex: 1,
                  selectedIndex: _selectedIndex,
                  text: 'Vorgesetzte',
                  width: (width - 34) * 0.5,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                BusinessCardBuilder(
                  header: 'Visitenkarte',
                  user: widget.loggedInUser,
                ),
                BusinessCardBuilder(
                      header: 'Vorgesetzte',
                      user: supervisor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

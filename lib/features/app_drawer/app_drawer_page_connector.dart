import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/app_drawer/_export.dart';
import 'package:ffuf_final_capstone/features/app_drawer/pages/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:flutter/material.dart';

class AppDrawerPageConnector extends StatelessWidget {
  const AppDrawerPageConnector({
    required this.onSelectTab,
    Key? key,
  }) : super(key: key);

  final Function(int) onSelectTab;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppDrawerPageViewModel>(
      vm: () => AppDrawerPageFactory(this),
      builder: (context, vm) => AppDrawerPage(
        onLogOut: vm.onLogOut,
        onSelectTab: (index) => onSelectTab(index),
      ),
    );
  }
}

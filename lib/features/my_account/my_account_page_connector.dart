import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/my_account/_export.dart';
import 'package:ffuf_final_capstone/features/my_account/pages/my_account_page.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:flutter/material.dart';

class MyAccountPageConnector extends StatelessWidget {
  const MyAccountPageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MyAccountPageViewModel>(
      vm: () => MyAccountPageFactory(this),
      builder: (context, vm) => MyAccountPage(
        userList: vm.userList,
        loggedInUser: vm.loggedInUser,
      ),
    );
  }
}

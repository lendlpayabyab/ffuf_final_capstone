import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/business_card/_export.dart';
import 'package:ffuf_final_capstone/features/business_card/pages/business_card_page.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:ffuf_final_capstone/state/actions/user/_export.dart';
import 'package:flutter/material.dart';

class BusinessCardPageConnector extends StatelessWidget {
  const BusinessCardPageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BusinessCardPageViewModel>(
      vm: () => BusinessCardPageFactory(this),
      builder: (context, vm) => BusinessCardPage(
        userList: vm.userList,
        loggedInUser: vm.loggedInUser,
      ),
    );
  }
}

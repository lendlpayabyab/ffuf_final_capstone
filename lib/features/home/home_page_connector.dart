import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/home/_export.dart';
import 'package:ffuf_final_capstone/features/home/pages/home_page.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:ffuf_final_capstone/state/actions/user/_export.dart';
import 'package:flutter/material.dart';

class HomePageConnector extends StatelessWidget {
  const HomePageConnector({Key? key}) : super(key: key);

  static const String routeName = '/home_page_connector';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      vm: () => HomePageFactory(this),
      onInit: (store) async {
        await store.dispatch(ActionLogInUser());
        await store.dispatch(ActionFetchUsers());
      },
      builder: (context, vm) => HomePage(
        unionPageState: vm.unionPageState,
      ),
    );
  }
}

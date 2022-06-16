import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/add_time_table/_export.dart';
import 'package:ffuf_final_capstone/features/add_time_table/pages/add_time_table_page.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:ffuf_final_capstone/state/actions/user/_export.dart';
import 'package:flutter/material.dart';

class AddTimeTablePageConnector extends StatelessWidget {
  const AddTimeTablePageConnector({Key? key}) : super(key: key);

  static const String routeName = '/add_time_table_page';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AddTimeTablePageViewModel>(
      vm: () => AddTimeTablePageFactory(this),
      onInit: (store) async => await store.dispatch(ActionFetchUsers()),
      builder: (context, vm) => AddTimeTablePage(unionPageState: vm.unionPageState),
    );
  }
}

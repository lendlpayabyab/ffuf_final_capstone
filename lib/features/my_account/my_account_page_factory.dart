import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/my_account/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class MyAccountPageFactory extends VmFactory<AppState, MyAccountPageConnector>{
  MyAccountPageFactory(super.widget);

  @override
  Vm? fromStore() {
    return MyAccountPageViewModel(userList: state.users, loggedInUser: state.loggedUser!);
  }
}

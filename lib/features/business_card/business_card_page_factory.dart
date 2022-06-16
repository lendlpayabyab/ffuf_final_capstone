import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/business_card/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class BusinessCardPageFactory extends VmFactory<AppState, BusinessCardPageConnector>{
  BusinessCardPageFactory(super.widget);

  @override
  Vm? fromStore() {
    return BusinessCardPageViewModel(userList: state.users, loggedInUser: state.loggedUser!);
  }
}

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/app_drawer/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:ffuf_final_capstone/state/actions/user/_export.dart';

class AppDrawerPageFactory extends VmFactory<AppState, AppDrawerPageConnector> {
  AppDrawerPageFactory(super.widget);

  @override
  Vm? fromStore() {
    return AppDrawerPageViewModel(
      onLogOut: () => dispatch(ActionLogOut()),
    );
  }
}

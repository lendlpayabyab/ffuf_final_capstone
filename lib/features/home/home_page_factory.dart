import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/home/_export.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class HomePageFactory extends VmFactory<AppState, HomePageConnector> {
  HomePageFactory(super.widget);

  @override
  Vm? fromStore() {
    return HomePageViewModel(unionPageState: _getLoadingState());
  }

  UnionPageState<User> _getLoadingState() {
    if (state.loggedUser == null || state.users.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.loggedUser!);
    }
  }
}

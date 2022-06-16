import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/add_time_table/_export.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class AddTimeTablePageFactory extends VmFactory<AppState, AddTimeTablePageConnector>{
  AddTimeTablePageFactory(super.widget);

  @override
  Vm? fromStore() {
    return AddTimeTablePageViewModel(unionPageState: _getLoadingState());
  }

  UnionPageState<List<User>> _getLoadingState(){
    if(state.users.isEmpty){
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.users);
    }
  }
}

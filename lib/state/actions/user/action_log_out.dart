import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class ActionLogOut extends ReduxAction<AppState>{
  @override
  Future<AppState?> reduce() async{
    return state.copyWith(users: [], loggedUser: null);
  }
}

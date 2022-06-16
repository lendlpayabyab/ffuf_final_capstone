import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/api/user/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

class ActionLogInUser extends ReduxAction<AppState>{
  @override
  Future<AppState?> reduce() async{
    try{
      final userApiHandler = UserApiHandler();
      final users = await userApiHandler.fetchUsers();
      final user = users[0];
      return state.copyWith(loggedUser: user);
    } on Exception catch(e){
      print(e);
    }
    return state;
  }
}

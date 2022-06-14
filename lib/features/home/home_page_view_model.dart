import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/user.dart';

class HomePageViewModel extends Vm{

  HomePageViewModel({required this.unionPageState}) : super(equals: [unionPageState]);

  final UnionPageState<User> unionPageState;

}

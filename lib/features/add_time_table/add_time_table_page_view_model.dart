import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/models/_export.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';

class AddTimeTablePageViewModel extends Vm{

  AddTimeTablePageViewModel({required this.unionPageState}): super(equals: [unionPageState]);

  final UnionPageState<List<User>> unionPageState;
}

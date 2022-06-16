import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/state/_export.dart';

abstract class AppAction extends ReduxAction<AppState> {
  @override
  String toString() => runtimeType.toString();
}

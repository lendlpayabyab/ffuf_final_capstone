import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';

class AppDrawerPageViewModel extends Vm{
  AppDrawerPageViewModel({required this.onLogOut});

  final VoidCallback onLogOut;
}

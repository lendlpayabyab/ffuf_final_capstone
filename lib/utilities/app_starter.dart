import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/flutter_app.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> appStarter() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final appState = AppState.initialState();
  final store = Store<AppState>(initialState: appState);
  runApp(FlutterApp(store: store));
}


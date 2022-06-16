import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/features/login/pages/_export.dart';
import 'package:ffuf_final_capstone/state/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({
    required this.store,
    Key? key,
  }) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter App',
        theme: AppTheme.theme,
        themeMode: ThemeMode.light,
        initialRoute: LoginPage.routeName,
        onGenerateRoute: AppRouter().generateRoute,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('de', 'DE'),
        ],
      ),
    );
  }
}

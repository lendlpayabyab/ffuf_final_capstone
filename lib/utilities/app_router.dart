import 'package:ffuf_final_capstone/features/add_time_table/add_time_table_page_connector.dart';
import 'package:ffuf_final_capstone/features/home/home_page_connector.dart';
import 'package:ffuf_final_capstone/features/home/pages/home_page.dart';
import 'package:ffuf_final_capstone/features/login/pages/login_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AddTimeTablePageConnector.routeName:
        return MaterialPageRoute(builder: (_) => const AddTimeTablePageConnector());
      case HomePageConnector.routeName:
        return MaterialPageRoute(builder: (_) => const HomePageConnector());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text('Error Page'),
          ),
        );
      },
    );
  }
}

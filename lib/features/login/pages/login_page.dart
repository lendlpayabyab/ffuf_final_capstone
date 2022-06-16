import 'package:ffuf_final_capstone/features/add_time_table/add_time_table_page_connector.dart';
import 'package:ffuf_final_capstone/features/home/home_page_connector.dart';
import 'package:ffuf_final_capstone/features/login/widgets/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: ResponsiveSafeArea(
        builder: (context, height, width) => Padding(
          padding: kGlobalAppPadding,
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/logo/logo.svg',
                  width: width * 0.15,
                ),
                const SizedBox(height: 48.0),
                Text(
                  'Flutter FieldPass',
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 56.0),
                InkWell(
                  onTap: () => Navigator.of(context).pushReplacementNamed(HomePageConnector.routeName),
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: kGlobalAppPadding,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/microsoft.svg'),
                          const SizedBox(width: 13),
                          Text(
                            'Sign in with Microsoft',
                            style: theme.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.normal, color: AppTheme.loginTextColor),
                          ),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/icons/double_arrow.svg'),
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginPageFooterButton(
                      theme: theme,
                      text: 'Impressum',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 32.0),
                    LoginPageFooterButton(
                      theme: theme,
                      text: 'DatenSchutz',
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



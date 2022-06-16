import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class LoginPageFooterButton extends StatelessWidget {
  const LoginPageFooterButton({
    required this.theme,
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final ThemeData theme;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)),
      onPressed: () => onPressed,
      child: Text(
        text,
        style: theme.textTheme.bodySmall?.copyWith(color: AppTheme.loginTextColor),
      ),
    );
  }
}

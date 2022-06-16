import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    required this.onTap,
    required this.iconWidget,
    required this.borderRadius,
    required this.fillColor,
    Key? key,
  }) : super(key: key);

  final Function onTap;
  final Widget iconWidget;
  final double borderRadius;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          minimumSize: MaterialStateProperty.all(const Size(42.0, 42.0)),
          backgroundColor: MaterialStateProperty.all(fillColor),
          shape: MaterialStateProperty.all( borderRadius == 0 ? const CircleBorder() : CircleBorder(side: BorderSide(width: borderRadius))),
        ),
        child: iconWidget,
      ),
    );
  }
}

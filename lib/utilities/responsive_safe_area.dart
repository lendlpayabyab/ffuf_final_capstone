import 'package:flutter/material.dart';

typedef ResponsiveBuilder = Widget Function(
  BuildContext context,
  double height,
  double width,
);

class ResponsiveSafeArea extends StatelessWidget {
  const ResponsiveSafeArea({
    required ResponsiveBuilder builder,
    Key? key,
  })  : responsiveBuilder = builder,
        super(key: key);
  final ResponsiveBuilder responsiveBuilder;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return responsiveBuilder(context, constraints.maxHeight, constraints.maxWidth);
        },
      ),
    );
  }
}

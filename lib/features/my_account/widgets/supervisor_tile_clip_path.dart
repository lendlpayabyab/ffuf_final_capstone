import 'package:flutter/material.dart';

class SupervisorTileClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width - (size.height * 0.45), 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

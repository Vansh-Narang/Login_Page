import 'package:flutter/material.dart';

class Customshape1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    var si = size.height;
    var wi = size.width;

    path.lineTo(0, si);
    path.quadraticBezierTo(wi / 2, si, wi, 0);
    path.lineTo(wi, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

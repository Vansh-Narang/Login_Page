import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    var si = size.height;
    var wi = size.width;

    path.lineTo(0, si);
    path.lineTo(wi, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

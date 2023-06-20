import 'package:flutter/material.dart';

class SizedHeight extends StatelessWidget {
  final double height;
  const SizedHeight({this.height = 10, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return SizedBox(height: height * maxHeight / 815);
  }
}


class SizedWidth extends StatelessWidget {
  final double width;
  const SizedWidth({this.width = 10, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return SizedBox(width: width * maxWidth / 375);
  }
}

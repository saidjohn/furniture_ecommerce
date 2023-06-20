import 'package:flutter/cupertino.dart';


class SizeHeight extends StatelessWidget {
  final double height;

  const SizeHeight({Key? key, this.height = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height * MediaQuery.of(context).size.height / 815);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsivelayout extends StatelessWidget {
  final Widget webscreen;
  final Widget mobscreen;
  const Responsivelayout(
      {Key? key, required this.mobscreen, required this.webscreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 768) {
        return mobscreen;
      }
      return webscreen;
    });
  }
}

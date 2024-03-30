import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    required this.colors,
  });
  final Widget child;
  final Alignment begin;
  final Alignment end;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
      child: child,
    );
  }
}

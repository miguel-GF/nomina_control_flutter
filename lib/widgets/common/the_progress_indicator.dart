import 'package:flutter/material.dart';
import '../../themes/main_colors.dart';

class TheProgressIndicator extends StatelessWidget {
  const TheProgressIndicator({
    super.key,
    this.color,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? primary,
    );
  }
}

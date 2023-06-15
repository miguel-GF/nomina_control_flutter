import 'package:flutter/material.dart';

import '../../themes/main_colors.dart';
import 'the_progress_indicator.dart';

class TheBottomSheet extends StatelessWidget {
  const TheBottomSheet({
    super.key,
    this.btnLabel,
    required this.onPressed,
    this.loader = false,
  });
  final String? btnLabel;
  final VoidCallback onPressed;
  final bool loader;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      color: bgCard,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (!loader) Expanded(
              child: ElevatedButton(
                onPressed: () => onPressed(),
                child: Text(btnLabel ?? 'GUARDAR'),
              ),
            ) else const TheProgressIndicator()
          ],
        ),
      ),
    );
  }
}

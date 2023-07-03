import 'package:expensio/app/core/expensio_ui/theme/colors/expensio_colors.dart';
import 'package:flutter/material.dart';

class ExpensioButton extends StatelessWidget {
  const ExpensioButton({
    required this.onPressed,
    required this.text,
    this.color,
    super.key,
  });

  final void Function()? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? context.expensioColors.blue,
        ),
        child: Text(text),
      ),
    );
  }
}

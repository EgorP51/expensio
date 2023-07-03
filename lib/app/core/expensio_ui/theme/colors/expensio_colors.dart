import 'package:flutter/material.dart';

extension ExpensioColorsExtension on BuildContext {
  ExpensioColors get expensioColors => ExpensioColors();
}

class ExpensioColors {
  Color get red => const Color(0xFFE53935);
  Color get blue => const Color(0xFF1565C0);
  Color get green => const Color(0xFF2E7D32);
  Color get yellow => const Color(0xFFFFC107);
  Color get orange => const Color(0xFFFF5722);
}

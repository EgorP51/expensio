import 'package:flutter/material.dart';

class TransactionData {
  final int mccCategory;
  final double amount;

  TransactionData(this.mccCategory, this.amount);
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);

  final int x;
  final double y;
  final Color? color;
}

import 'package:expensio/app/features/qr_code_reader/presentation/screens/qr_code_reader_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QRCodeReaderScreen(),
    );
  }
}

import 'package:expensio/app/features/qr_code_reader/presentation/widgets/qr_code_reader_widget.dart';
import 'package:flutter/material.dart';

class QRCodeReaderScreen extends StatelessWidget {
  const QRCodeReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: const Alignment(0, -0.3),
        child: SizedBox.square(dimension: 250, child: QRCodeReaderWidget()),
      ),
    );
  }
}


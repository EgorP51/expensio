import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';

class QRCodeReaderWidget extends StatefulWidget {
  const QRCodeReaderWidget({super.key});

  @override
  State<QRCodeReaderWidget> createState() => _QRCodeReaderWidgetState();
}

class _QRCodeReaderWidgetState extends State<QRCodeReaderWidget> {
  String? _qrInfo = 'Scan a QR/Bar code';
  bool _camState = false;

  _qrCallback(String? code) {
    setState(() {
      _camState = false;
      _qrInfo = code;
    });
  }

  _scanCode() {
    setState(() {
      _camState = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _scanCode();
  }

  @override
  Widget build(BuildContext context) {
    if (!_camState) {
      return InkWell(
        onLongPress: () {
          setState(() {
            _camState = !_camState;
          });
        },
        child: ColoredBox(
          color: Colors.green,
          child: Text(_qrInfo!),
        ),
      );
    } else {
      return QRBarScannerCamera(
        onError: (context, error) => Text(
          error.toString(),
          style: const TextStyle(color: Colors.red),
        ),
        qrCodeCallback: (code) {
          _qrCallback(code);
        },
      );
    }
  }
}
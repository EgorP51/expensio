import 'package:flutter/foundation.dart';

class QRCodeFormater {
  String? getPriceFromQRCode(String qrInfo) {
    // no link format
    //'ABoAAAOrAAAAABUADaZsAATSwwJuKopEKZuy9bM=;0000003990;0307231352;3000762597;0000322741'
    RegExp notLinkFormatRegExp =
        RegExp(r'^[A-Za-z0-9]+=;[0-9]{10};[0-9]{10};[0-9]{10};[0-9]{10}$');

    if (notLinkFormatRegExp.hasMatch(qrInfo)) {
      return _notLinkFormat(qrInfo);
    }

    // link format
    //https://cabinet.tax.gov.ua/cashregs/check?id=1112028941&fn=4000518028&date=20230629&sm=7.99
    RegExp linkFormatRegExp = RegExp(r'^https?:\/\/[^\s/$.?#].[^\s]*$');
    if (linkFormatRegExp.hasMatch(qrInfo)) {
      return _linkFormat(qrInfo);
    }

    return null;
  }

  String? _notLinkFormat(String qrInfo) {
    List<String> parts = qrInfo.split(';');
    if (parts.length >= 2) {
      String amountString = parts[1];
      try {
        int amountInCents = int.parse(amountString);
        double amount = amountInCents / 100;
        return amount.toStringAsFixed(2);
      } catch (e) {
        if (kDebugMode) {
          print('Error parsing amount from QR code: $e');
        }
      }
    }
    return null;
  }

  String? _linkFormat(String qrInfo) {
    Uri uri = Uri.parse(qrInfo);
    String? value = uri.queryParameters['sm'];
    return value;
  }
}

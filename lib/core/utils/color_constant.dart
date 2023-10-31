import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color gray5001 = fromHex('#f8f8f8');

  static Color blue900 = fromHex('#1328a8');

  static Color gray90033 = fromHex('#33061531');

  static Color blue90019 = fromHex('#191228a8');

  static Color gray900 = fromHex('#061531');

  static Color black9007c = fromHex('#7c000000');

  static Color gray200 = fromHex('#e7e7e7');

  static Color black9000c = fromHex('#0c000000');

  static Color gray50 = fromHex('#fafafa');

  static Color gray90019 = fromHex('#19061531');

  static Color black90033 = fromHex('#33000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray20001 = fromHex('#ebebeb');

  static Color blueGray700 = fromHex('#39517f');

  static Color gray20002 = fromHex('#efefef');

  static Color blueGray900 = fromHex('#061f50');

  static Color green600 = fromHex('#00A71A');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blue90099 = fromHex('#991328a8');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

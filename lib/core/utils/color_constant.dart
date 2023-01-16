import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color pink9000c = fromHex('#0c5a0f2e');

  static Color deepOrangeA100 = fromHex('#ffa67e');

  static Color lightBlueA400 = fromHex('#00c1ff');

  static Color blueA400 = fromHex('#1877f2');

  static Color pink900 = fromHex('#5a0f2e');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f8f8f8');

  static Color gray300Cc = fromHex('#ccdddddd');

  static Color deepOrangeA10066 = fromHex('#66ffa67e');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color pinkA400 = fromHex('#f00073');

  static Color purpleA200 = fromHex('#bb2cff');

  static Color blueGray900 = fromHex('#333333');

  static Color redA700 = fromHex('#e60023');

  static Color gray90002 = fromHex('#1c1b2d');

  static Color gray700 = fromHex('#666666');

  static Color gray90003 = fromHex('#111111');

  static Color blue800 = fromHex('#2867b2');

  static Color blue500 = fromHex('#1da1f2');

  static Color gray900 = fromHex('#2e1f25');

  static Color gray90001 = fromHex('#3f0303');

  static Color gray200 = fromHex('#e8e6ea');

  static Color gray300 = fromHex('#e1e1e1');

  static Color gray30001 = fromHex('#dddddd');

  static Color deepOrangeA10033 = fromHex('#33ffa67e');

  static Color deepOrangeA10099 = fromHex('#99ffa67e');

  static Color bluegray400 = fromHex('#888888');

  static Color redA70001 = fromHex('#ff0000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

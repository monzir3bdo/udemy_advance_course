import 'dart:ui';

abstract class ColorsManager {
  static final Color primary = HexColor.fromHex('#ED9728');
  static final Color grey = HexColor.fromHex('#525252');
  static final Color darkGrey = HexColor.fromHex('#737477');
  static final Color lightGrey = HexColor.fromHex('#9E9E9E');
  static final Color primaryWithOpacity70 = HexColor.fromHex('#B3ED9728');
  static final Color darkPrimary = HexColor.fromHex('#d17d11');
  static final Color grey1 = HexColor.fromHex('#707070');
  static final Color grey2 = HexColor.fromHex('#797979');
  static final Color white = HexColor.fromHex('#FFFFFF');
  static final Color error = HexColor.fromHex('#e61f34');
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.replaceAll('#', '');
    if (hexString.length == 6) {
      hexString = 'FF$hexString';
    }
    return Color(int.parse(hexString, radix: 16));
  }
}

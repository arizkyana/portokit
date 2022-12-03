import 'package:flutter/material.dart';

abstract class PortoKitTheme {
  static PortoKitTheme of(BuildContext context) => LightTheme();

  late Color generalDark;
  late Color generalMain;
  late Color generalMid;
  late Color generalLight;
  late Color generalSoft;

  late Color blueSoft;
  late Color blueDark;
}

class LightTheme extends PortoKitTheme {
  Color generalDark = const Color.fromRGBO(17, 30, 36, 1);
  Color generalMain = const Color.fromRGBO(46, 67, 77, 1);
  Color generalMid = const Color.fromRGBO(120, 133, 129, 1);
  Color generalLight = const Color.fromRGBO(179, 195, 202, 1);
  Color generalSoft = const Color.fromRGBO(228, 231, 233, 1);

  Color blueSoft = const Color.fromRGBO(237, 248, 254, 1);
  Color blueDark = Color.fromARGB(255, 0, 90, 138);
}
import 'package:flutter/material.dart';

const _GOLOS_FONT_FAMILY = 'Golos';

abstract final class AppTextStyles {
  static const h1S24W600 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const h3S20W600 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const h4S16W500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _GOLOS_FONT_FAMILY,
  );

  static const textS12W400G = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const textS12W600G = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: _GOLOS_FONT_FAMILY,
  );

  static const captionS12W400 = textS12W400G;
  static const captionBoldS12W500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: _GOLOS_FONT_FAMILY,
  );

  static const bodyMediumS16W400 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const bodySmallS14W400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: _GOLOS_FONT_FAMILY,
  );

  static const textS16W500G = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const textS16W400G = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: _GOLOS_FONT_FAMILY,
  );
  static const noStyle = TextStyle(fontSize: 0, height: 0);
}


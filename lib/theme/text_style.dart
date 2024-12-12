import 'package:flutter/material.dart';
import 'package:get_it_study/theme/color_stytle.dart';

const String jalnan = 'Jalnan';
const String jalnanGothic = 'JalnanGothic';
const String pretendard = 'Pretendard';
const String sarcolenta = 'Sarcolenta';
const String brownBulgary = 'BrownBulgary';
const String retroSignature = 'RetroSignature';
const String myWife = 'NanumMyWife';
const String myfather = 'NanumFather';
const String nanumGothic = 'NanumGothic';

const String maruburi = 'MaruBuri';

extension WeddingTypography on TextStyle {
  TextStyle get j1 => TextStyle(fontFamily: jalnan, fontSize: 32, color: ColorStyle.grayColor900);

  TextStyle get j2 => TextStyle(fontFamily: jalnan, fontSize: 24, color: ColorStyle.grayColor900);

  TextStyle get j3 => TextStyle(fontFamily: jalnan, fontSize: 20, color: ColorStyle.grayColor900);

  TextStyle get j4 => TextStyle(fontFamily: jalnan, fontSize: 18, color: ColorStyle.grayColor900);

  TextStyle get j5 => TextStyle(fontFamily: jalnan, fontSize: 16, color: ColorStyle.grayColor900);

  TextStyle get jg1 =>
      TextStyle(fontFamily: jalnanGothic, fontSize: 32, color: ColorStyle.grayColor900);

  TextStyle get jg2 =>
      TextStyle(fontFamily: jalnanGothic, fontSize: 24, color: ColorStyle.grayColor900);

  TextStyle get jg3 =>
      TextStyle(fontFamily: jalnanGothic, fontSize: 20, color: ColorStyle.grayColor900);

  TextStyle get jg4 =>
      TextStyle(fontFamily: jalnanGothic, fontSize: 18, color: ColorStyle.grayColor900);

  TextStyle get jg5 =>
      TextStyle(fontFamily: jalnanGothic, fontSize: 16, color: ColorStyle.grayColor900);

  TextStyle get head1 => TextStyle(
        fontFamily: pretendard,
        fontSize: 32,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w700,
      );

  TextStyle get head2 => TextStyle(
        fontFamily: pretendard,
        fontSize: 24,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w700,
      );

  TextStyle get head3 => TextStyle(
        fontFamily: pretendard,
        fontSize: 20,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w700,
      );

  TextStyle get head4 => TextStyle(
        fontFamily: pretendard,
        fontSize: 18,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w700,
      );

  TextStyle get head5 => TextStyle(
        fontFamily: pretendard,
        fontSize: 16,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w700,
      );

  TextStyle get p1 => TextStyle(
        fontFamily: pretendard,
        fontSize: 32,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w400,
      );

  TextStyle get p2 => TextStyle(
        fontFamily: pretendard,
        fontSize: 24,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w400,
      );

  TextStyle get p3 => TextStyle(
        fontFamily: pretendard,
        fontSize: 20,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w400,
      );

  TextStyle get p4 => TextStyle(
        fontFamily: pretendard,
        fontSize: 18,
        color: ColorStyle.grayColor900,
        fontWeight: FontWeight.w400,
      );
}

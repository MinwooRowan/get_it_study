// Flutter imports:
import 'package:flutter/material.dart';

class ColorStyle {
  static const Color backgroundCanvas = primary20;
  static const Color backgroundCard = whiteColor;
  static const Color backgroundDisabled = grayColor50;
  static const Color backgroundFooter = primary20;
  static const Color backgroundHeader = whiteColor;
  static const Color backgroundTableTitle1Dapth = grayColor50;
  static const Color backgroundTableTitle2Dapth = grayColor25;
  static const Color backgroundCardRadius = whiteColor;
  static const Color borderCardStroke = grayColor100;
  static const Color borderDisabledStroke = grayColor100;
  static const Color borderFooterStroke = grayColor50;
  static const Color borderHeaderStroke = grayColor50;
  static const Color borderTableStroke = grayColor50;
  static const Color iconDefault = grayColor700;
  static const Color textBrand = primary500;
  static const Color textCaption = grayColor300;
  static const Color textDisabled = grayColor200;
  static const Color textEssential = red500;
  static const Color textInvert = grayColor25;
  static const Color textPrimary = grayColor900;
  static const Color textSecondary = grayColor700;
  static const Color textTertiary = grayColor500;

// Primary Color
  static const Color primary900 = Color(0xFF8A1632);
  static const Color primary800 = Color(0xFFA32342);
  static const Color primary700 = Color(0xFFBD3153);
  static const Color primary600 = Color(0xFFD63E63);
  static const Color primary500 = Color(0xFFF04B73);
  static const Color primary400 = Color(0xFFF36F8F);
  static const Color primary300 = Color(0xFFF693AB);
  static const Color primary200 = Color(0xFFF9B6C6);
  static const Color primary100 = Color(0xFFFCDAE2);
  static const Color primary20 = Color(0xFFFFFBFC);

// Gray Color
  static const Color grayColor900 = Color(0xFF252525);
  static const Color grayColor800 = Color(0xFF3B3B3B);
  static const Color grayColor700 = Color(0xFF505050);
  static const Color grayColor600 = Color(0xFF666666);
  static const Color grayColor500 = Color(0xFF7B7B7B);
  static const Color grayColor400 = Color(0xFF909090);
  static const Color grayColor300 = Color(0xFFA5A5A5);
  static const Color grayColor200 = Color(0xFFBBBBBB);
  static const Color grayColor100 = Color(0xFFD1D1D1);
  static const Color grayColor50 = Color(0xFFF6F6F6);
  static const Color grayColor25 = Color(0xFFF4F4F4);

  static const Color blue50 = Color(0xFFE9EFFC);
  static const Color blue100 = Color(0xFFD4DFF9);
  static const Color blue200 = Color(0xFFA9BFF3);
  static const Color blue300 = Color(0xFF83A2EE);
  static const Color blue400 = Color(0xFF5C86E8);
  static const Color blue500 = Color(0xFF3669E3);
  static const Color blue600 = Color(0xFF2D58C0);
  static const Color blue700 = Color(0xFF24479E);

  static const Color red50 = Color(0xFFFBE9E9);
  static const Color red100 = Color(0xFFF8D3D3);
  static const Color red200 = Color(0xFFF2A8A8);
  static const Color red300 = Color(0xFFEC8181);
  static const Color red400 = Color(0xFFE65A5A);
  static const Color red500 = Color(0xFFE03333);
  static const Color red600 = Color(0xFFBC2A2A);
  static const Color red700 = Color(0xFF982121);

  static const Color green50 = Color(0xFFEEF9E5);
  static const Color green100 = Color(0xFFDEF4CC);
  static const Color green200 = Color(0xFFBDE99A);
  static const Color green300 = Color(0xFFA0DF6E);
  static const Color green400 = Color(0xFF83D643);
  static const Color green500 = Color(0xFF67CC18);
  static const Color green600 = Color(0xFF52A313);
  static const Color green700 = Color(0xFF3E7A0E);

  static const Color pupple100 = Color(0xFFE8D7FA);
  static const Color pupple200 = Color(0xFFD2AFF5);
  static const Color pupple300 = Color(0xFFBB87F0);
  static const Color pupple400 = Color(0xFFA45FEB);
  static const Color pupple500 = Color(0xFF8E37E6);
  static const Color pupple600 = Color(0xFF722CB8);
  static const Color pupple700 = Color(0xFF55218A);

// Learning Area Color
  static const Color congnitionColor600 = Color(0xFF7F5DBA);
  static const Color congnitionColor500 = Color(0xFF9F74E8);
  static const Color congnitionColor50 = Color(0xFFF5F1FD);

  static const Color exerciseColor600 = Color(0xFF588DBA);
  static const Color exerciseColor500 = Color(0xFF6EB0E8);
  static const Color exerciseColor50 = Color(0xFFF1F7FD);

  static const Color nutritionColor600 = Color(0xFFCC9D26);
  static const Color nutritionColor500 = Color(0xFFFFC42F);
  static const Color nutritionColor50 = Color(0xFFFFF9EA);

  static const Color vesselColor600 = Color(0xFFB75555);
  static const Color vesselColor500 = Color(0xFFE56A6A);
  static const Color vesselColor50 = Color(0xFFFCF0F0);

  static const Color motivationColor600 = Color(0xFF3DADA4);
  static const Color motivationColor500 = Color(0xFF4CD8CD);
  static const Color motivationColor50 = Color(0xFFF1F7FD);

  static const Color chartDataB500 = Color(0xFFFAAA00);
  static const Color chartDataB200 = Color(0xFFFDDD99);

// BackgroundColor
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color textTertiaryColor = Color(0xFF7B7B7B);

// ButtonStateColor
  static const Color buttonOnPressedColor = Color(0x13252525);

  // ButtonGradient Color
  static const primaryEnabledButtonGradient = LinearGradient(
    stops: [0.0, 0.6, 1.0],
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: <Color>[
      Color(0xFFF9B6C6),
      Color(0xFFF04B73),
      Color(0xFFD63E63),
    ],
  );
  static const secondaryEnabledButtonGradient = LinearGradient(
    stops: [0.0, 0.6, 1.0],
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: <Color>[
      Color(0xFFFFFFFF),
      Color(0xFFF4F4F4),
      Color(0xFFE6E6E6),
    ],
  );

  static const tertiaryEnabledButtonGradient = LinearGradient(
    stops: [0.0, 0.6, 1.0],
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: <Color>[
      Color(0xFFFFFFFF),
      Color(0xFFF4F4F4),
      Color(0xFFE6E6E6),
    ],
  );

  static const puppleGradient = LinearGradient(
    stops: [0.0, 0.6, 1.0],
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: <Color>[
      Color(0xFFD2AFF5),
      Color(0xFF8E37E6),
      Color(0xFF722CB8),
    ],
  );

  static const blueGradient = LinearGradient(
    stops: [0.0, 0.6, 1.0],
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: <Color>[
      Color(0xFFA9BFF3),
      Color(0xFF3669E3),
      Color(0xFF2D58C0),
    ],
  );

  final LinearGradient levelChartGradient = LinearGradient(
    stops: const [0.0, 1.0],
    begin: const Alignment(0.00, -1.00),
    end: const Alignment(0, 1),
    colors: <Color>[
      const Color(0xFFF04B73).withOpacity(0.2),
      const Color(0xFFFAAA00).withOpacity(0),
    ],
  );

  final LinearGradient indicatorBoxGradient = LinearGradient(
    stops: const [0.0, 0.7, 1.0],
    begin: const Alignment(0.00, -1.00),
    end: const Alignment(0, 1),
    colors: <Color>[
      whiteColor.withOpacity(0.3),
      whiteColor,
      whiteColor.withOpacity(0.2),
    ],
  );

  static const LinearGradient rewardProgressIndicatorGradient = LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0xFFFFF500), Color(0xFFFFC600), Color(0xFFFFF500)],
  );

  static const LinearGradient rewardProgressIndicatorBoxGradient = LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0x19252525), Color(0x0C252525), Color(0x19252525)],
  );

  static const LinearGradient loadingProgressIndicatorGradient = LinearGradient(
    begin: Alignment(-1.0, 0.0),
    end: Alignment(1.0, 0.0),
    colors: [
      Color(0xFFFAAA00),
      Color(0xFFF04B73),
    ],
  );

  static const Color activeTextColor = Color(0xFF3669E3);
  static const Color inactiveTextColor = Color(0xFFE03333);
}

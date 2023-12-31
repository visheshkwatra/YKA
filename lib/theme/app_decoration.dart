import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90005,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue70001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange5001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10011,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10006 => BoxDecoration(
        color: appTheme.gray10006,
      );
  static BoxDecoration get fillGray10007 => BoxDecoration(
        color: appTheme.gray10007,
      );
  static BoxDecoration get fillGray10008 => BoxDecoration(
        color: appTheme.gray10008,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray30002 => BoxDecoration(
        color: appTheme.gray30002,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5005,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red800,
      );
  static BoxDecoration get fillRed700 => BoxDecoration(
        color: appTheme.red700,
      );
  static BoxDecoration get fillRed70003 => BoxDecoration(
        color: appTheme.red70003,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal70003,
      );
  static BoxDecoration get fillTeal600 => BoxDecoration(
        color: appTheme.teal600,
      );
  static BoxDecoration get fillTeal700 => BoxDecoration(
        color: appTheme.teal700,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.5),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, -0.01),
          colors: [
            appTheme.black90005,
            appTheme.gray90013,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray50,
            appTheme.blueGray10003,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray10005,
            appTheme.gray30005,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray50,
            appTheme.teal5001,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToBlue => BoxDecoration(
        border: Border.all(
          color: appTheme.blue90001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            appTheme.indigo900,
            appTheme.blue900,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [
            appTheme.indigo900,
            appTheme.cyan700,
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightBlue90001.withOpacity(0),
            appTheme.lightBlue90001,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.redA200,
            appTheme.red80002,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.1),
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.red30002,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.red50,
            appTheme.red100,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0.01, 0.33),
          colors: [
            appTheme.red70001,
            appTheme.redA20001,
          ],
        ),
      );
  static BoxDecoration get gradientTealToTeal => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.1),
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.teal40001,
            appTheme.teal70002,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.whiteA700.withOpacity(0.16),
            appTheme.whiteA700.withOpacity(0.16),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blue50,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outlineGray10004 => BoxDecoration(
        color: appTheme.indigo5005,
        border: Border.all(
          color: appTheme.gray10004,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray10008 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10008,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20004 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray90019 => BoxDecoration(
        color: appTheme.red800,
        border: Border.all(
          color: appTheme.gray90019,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo5001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.red70003,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineRed800 => BoxDecoration(
        border: Border.all(
          color: appTheme.red800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.blueGray10001,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 2.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.19),
          width: 7.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get outline2 => BoxDecoration();
  static BoxDecoration get outline3 => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get circleBorder51 => BorderRadius.circular(
        51.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderBR16 => BorderRadius.only(
        topLeft: Radius.circular(12.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.vertical(
        top: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.only(
        topLeft: Radius.circular(40.h),
        topRight: Radius.circular(40.h),
        bottomLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL401 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder56 => BorderRadius.circular(
        56.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    
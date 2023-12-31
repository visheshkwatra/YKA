import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray70004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70004,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeRed800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red800,
      );
  static get bodyLargeRed80016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red800,
        fontSize: 16.fSize,
      );
  static get bodyLargeRed800_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red800,
      );
  static get bodyLargeRubikBlack90005 =>
      theme.textTheme.bodyLarge!.rubik.copyWith(
        color: appTheme.black90005,
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA70016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontSize: 16.fSize,
      );
  static get bodyMediumBlack90005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90005,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack9000515 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90005,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack90005_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90005,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray50002,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray70001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray60014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70003,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70006 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70006,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray8000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray8000114_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray80001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumRed800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red800,
        fontSize: 14.fSize,
      );
  static get bodyMediumRubikBlack90005 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.black90005.withOpacity(0.7),
        fontSize: 14.fSize,
      );
  static get bodyMediumRubikBlack9000514 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.black90005,
        fontSize: 14.fSize,
      );
  static get bodyMediumRubikBluegray50004 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.blueGray50004,
      );
  static get bodyMediumRubikOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumSFProTextBluegray40001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodySmallBlue70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue70001,
      );
  static get bodySmallCircularStdWhiteA700 =>
      theme.textTheme.bodySmall!.circularStd.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallDMSansWhiteA700 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallLatoGray60005 => theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray60005,
      );
  static get bodySmallOpenSans => theme.textTheme.bodySmall!.openSans;
  static get bodySmallOpenSans11 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallOpenSansBluegray500 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallOpenSansBluegray50003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray50003,
      );
  static get bodySmallOpenSansBluegray50003_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray50003,
      );
  static get bodySmallOpenSansBluegray500_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallOpenSansGray80004 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray80004,
      );
  static get bodySmallOpenSansGray80004_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray80004,
      );
  static get bodySmallOpenSansRed70003 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.red70003,
      );
  static get bodySmallOpenSansWhiteA700 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallOpenSansWhiteA70010 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.9),
        fontSize: 10.fSize,
      );
  static get bodySmallOpenSansWhiteA70011 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  // Cera text style
  static get ceraProBlack90005 => TextStyle(
        color: appTheme.black90005.withOpacity(0.37),
        fontSize: 74.fSize,
        fontWeight: FontWeight.w900,
      ).ceraPro;
  // Headline text style
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallProximaNovaAlt =>
      theme.textTheme.headlineSmall!.proximaNovaAlt;
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeBlack90005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90005,
        fontSize: 13.fSize,
      );
  static get labelLargeBlack90005Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack90005_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90005.withOpacity(0.42),
      );
  static get labelLargeBluegray10002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray50003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray50003,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray70004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70004,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray70005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70005,
      );
  static get labelLargeBluegray90004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90004,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeCircularStdBlack90005 =>
      theme.textTheme.labelLarge!.circularStd.copyWith(
        color: appTheme.black90005,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeCircularStdBlack90005Medium =>
      theme.textTheme.labelLarge!.circularStd.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeCircularStdGray90015 =>
      theme.textTheme.labelLarge!.circularStd.copyWith(
        color: appTheme.gray90015,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDMSans => theme.textTheme.labelLarge!.dMSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDMSansBlack =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary13 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRed70003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red70003,
      );
  static get labelLargeRed800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red800.withOpacity(0.42),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed80002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red80002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed80013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red800,
        fontSize: 13.fSize,
      );
  static get labelLargeRed800Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red800,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed800Bold_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRed800Bold_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeTeal500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal500,
      );
  static get labelMediumBlack90005 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90005.withOpacity(0.46),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumDMSansIndigo800 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.indigo800,
        fontSize: 10.fSize,
      );
  static get labelMediumDMSansPrimary =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get labelMediumDMSansRed800 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.red800,
        fontSize: 10.fSize,
      );
  static get labelMediumProximaNovaAlt =>
      theme.textTheme.labelMedium!.proximaNovaAlt.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumRed800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red800,
      );
  static get labelMediumRubik => theme.textTheme.labelMedium!.rubik.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumRubikWhiteA700 =>
      theme.textTheme.labelMedium!.rubik.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumTeal70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teal70001,
        fontSize: 10.fSize,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w800,
      );
  static get labelMediumWhiteA700SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumWhiteA700_2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmall8 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get labelSmall8_1 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 8.fSize,
      );
  // Open text style
  static get openSansBlack90005 => TextStyle(
        color: appTheme.black90005.withOpacity(0.37),
        fontSize: 74.fSize,
        fontWeight: FontWeight.w800,
      ).openSans;
  static get openSansGray10003 => TextStyle(
        color: appTheme.gray10003,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w800,
      ).openSans;
  static get openSansWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w800,
      ).openSans;
  // Title text style
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLargeCircularStdWhiteA700 =>
      theme.textTheme.titleLarge!.circularStd.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeDMSans => theme.textTheme.titleLarge!.dMSans;
  static get titleLargeGray70002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70002.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray70002Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70002.withOpacity(0.46),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray70002Regular_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRubik => theme.textTheme.titleLarge!.rubik;
  static get titleLargeRubikGray80002 =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        color: appTheme.gray80002,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeRubikMedium =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSFUIDisplayWhiteA700 =>
      theme.textTheme.titleLarge!.sFUIDisplay.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 21.fSize,
      );
  static get titleMediumCircularStdGray90015 =>
      theme.textTheme.titleMedium!.circularStd.copyWith(
        color: appTheme.gray90015,
      );
  static get titleMediumCircularStdPrimary =>
      theme.textTheme.titleMedium!.circularStd.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumCircularStdWhiteA700 =>
      theme.textTheme.titleMedium!.circularStd.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumCircularStdWhiteA700Medium =>
      theme.textTheme.titleMedium!.circularStd.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSans => theme.textTheme.titleMedium!.dMSans;
  static get titleMediumDMSans18 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumDMSansGray90012 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray90012,
      );
  static get titleMediumDMSansWhiteA700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumLato => theme.textTheme.titleMedium!.lato.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumRed800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
      );
  static get titleMediumRed80018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
        fontSize: 18.fSize,
      );
  static get titleMediumRed800_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
      );
  static get titleMediumRubik => theme.textTheme.titleMedium!.rubik.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRubikBluegray800 =>
      theme.textTheme.titleMedium!.rubik.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRubikGray80002 =>
      theme.textTheme.titleMedium!.rubik.copyWith(
        color: appTheme.gray80002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRubikMedium =>
      theme.textTheme.titleMedium!.rubik.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRubikWhiteA700 =>
      theme.textTheme.titleMedium!.rubik.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProText =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA70017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleMediumWhiteA70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA70018_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700SemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleMedium_2 => theme.textTheme.titleMedium!;
  static get titleSmallBlack90005 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005.withOpacity(0.49),
      );
  static get titleSmallBlack9000515 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005,
        fontSize: 15.fSize,
      );
  static get titleSmallBlack90005Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90005Bold15 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90005Bold_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90005_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005.withOpacity(0.42),
      );
  static get titleSmallBlack90005_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90005,
      );
  static get titleSmallBlue70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue70002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray40001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleSmallBluegray70003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray70004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70004,
      );
  static get titleSmallBluegray70006 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70006,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleSmallBluegray90005 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 15.fSize,
      );
  static get titleSmallCircularStdBlack90005 =>
      theme.textTheme.titleSmall!.circularStd.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallCircularStdGray90015 =>
      theme.textTheme.titleSmall!.circularStd.copyWith(
        color: appTheme.gray90015.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansWhiteA700 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray60004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60004,
      );
  static get titleSmallGray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGreen70003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green70003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallIndigo300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo300,
      );
  static get titleSmallIndigo800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLime700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsBlue70001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blue70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryBold_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red800,
      );
  static get titleSmallRed80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red80001,
      );
  static get titleSmallRedA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRubikBlack90005 =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.black90005,
      );
  static get titleSmallRubikBlack90005Bold =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.black90005,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRubikBlue70001 =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.blue70001,
      );
  static get titleSmallRubikWhiteA700 =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallTeal700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700Bold15 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700Bold_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallYellow900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get ceraPro {
    return copyWith(
      fontFamily: 'Cera Pro',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get circularStd {
    return copyWith(
      fontFamily: 'Circular Std',
    );
  }

  TextStyle get proximaNovaAlt {
    return copyWith(
      fontFamily: 'Proxima Nova Alt',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

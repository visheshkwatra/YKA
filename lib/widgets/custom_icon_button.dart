import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(29.h),
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.8),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5005,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillWhiteATL25 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlueTL21 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA70019,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray90019,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray5002,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.indigo800.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGrayTL10 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueTL27 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(27.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlueTL35 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(35.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 2.h,
        ),
      );
}

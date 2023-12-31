import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.96, -0.74),
          end: Alignment(0.06, 1.81),
          colors: [
            appTheme.red800,
            appTheme.red800.withOpacity(0),
            appTheme.red800,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7.v),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userprofilelistItemModelObj.dynamicText1!,
                          style:
                              CustomTextStyles.bodySmallOpenSansBluegray500_1,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          userprofilelistItemModelObj.dynamicText2!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 151.h,
                        bottom: 5.v,
                      ),
                      child: CustomIconButton(
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        child: CustomImageView(
                          imagePath:
                              userprofilelistItemModelObj?.dynamicIconButton,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                height: 133.v,
                width: 341.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Opacity(
                        opacity: 0.04,
                        child: Text(
                          userprofilelistItemModelObj.dynamicText3!,
                          style: CustomTextStyles.openSansBlack90005,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: userprofilelistItemModelObj?.dynamicImage,
                      height: 108.v,
                      width: 291.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

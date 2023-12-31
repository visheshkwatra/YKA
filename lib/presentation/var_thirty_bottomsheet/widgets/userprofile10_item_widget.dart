import '../models/userprofile10_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  Userprofile10ItemWidget(
    this.userprofile10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile10ItemModel userprofile10ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
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
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.v),
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.outlineRed800.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red800,
                    borderRadius: BorderRadius.circular(
                      6.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile10ItemModelObj.englishText!,
                      style: CustomTextStyles.titleMediumRed800,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      userprofile10ItemModelObj.welcomeText!,
                      style: CustomTextStyles.bodyMediumBlack90005_1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: userprofile10ItemModelObj?.englishImage,
                height: 32.v,
                width: 44.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                margin: EdgeInsets.only(
                  top: 5.v,
                  right: 3.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

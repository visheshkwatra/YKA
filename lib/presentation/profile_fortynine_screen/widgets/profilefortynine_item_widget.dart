import '../models/profilefortynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class ProfilefortynineItemWidget extends StatelessWidget {
  ProfilefortynineItemWidget(
    this.profilefortynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilefortynineItemModel profilefortynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
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
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 21.v),
            Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: Text(
                profilefortynineItemModelObj.reservedOnDate!,
                style: CustomTextStyles.bodySmallOpenSansBluegray500_1,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: Text(
                profilefortynineItemModelObj.carModel!,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Container(
              height: 151.v,
              width: 341.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Opacity(
                      opacity: 0.04,
                      child: Text(
                        profilefortynineItemModelObj.carBrand!,
                        style: CustomTextStyles.openSansBlack90005,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: profilefortynineItemModelObj?.carImage,
                    height: 121.v,
                    width: 291.h,
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 111.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillDeepOrange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text(
                    profilefortynineItemModelObj.reservationAmount!,
                    style: CustomTextStyles.labelLargeRed80013,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127.v,
      width: 286.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 110.v,
                width: 259.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
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
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 66.adaptSize,
                            width: 66.adaptSize,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: userprofile3ItemModelObj?.image1,
                                  height: 54.adaptSize,
                                  width: 54.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.bottomRight,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    height: 41.v,
                                    width: 37.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: userprofile3ItemModelObj
                                              ?.userImage,
                                          height: 41.v,
                                          width: 37.h,
                                          radius: BorderRadius.only(
                                            topLeft: Radius.circular(12.h),
                                            bottomRight: Radius.circular(16.h),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 5.h,
                                              right: 5.h,
                                              bottom: 5.v,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "lbl_bhd".tr,
                                                        style: CustomTextStyles
                                                            .labelSmall8_1,
                                                      ),
                                                      TextSpan(
                                                        text: "lbl_52".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumWhiteA700_1,
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                SizedBox(height: 2.v),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3.h),
                                                  child: Text(
                                                    userprofile3ItemModelObj
                                                        .text2!,
                                                    style: theme
                                                        .textTheme.labelSmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 17.v,
                              bottom: 6.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userprofile3ItemModelObj.text3!,
                                  style: CustomTextStyles
                                      .titleSmallBlack90005Bold_1,
                                ),
                                SizedBox(height: 6.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    userprofile3ItemModelObj.text4!,
                                    style: CustomTextStyles.labelMediumSemiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 23.v,
                              bottom: 11.v,
                            ),
                            child: CustomIconButton(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineIndigo,
                              child: CustomImageView(
                                imagePath: userprofile3ItemModelObj?.fi,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                userprofile3ItemModelObj.text5!,
                                style: CustomTextStyles.labelLargeTeal500,
                              ),
                            ),
                            Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 24.v,
                                bottom: 13.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.black90005,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                top: 15.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                userprofile3ItemModelObj.text6!,
                                style: CustomTextStyles
                                    .bodySmallOpenSansGray80004_1,
                              ),
                            ),
                            Spacer(),
                            CustomElevatedButton(
                              height: 30.v,
                              width: 86.h,
                              text: "lbl_2_4_km".tr,
                              margin: EdgeInsets.only(
                                top: 9.v,
                                right: 4.h,
                              ),
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 6.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFi5665490,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.fillRed,
                              buttonTextStyle: theme.textTheme.labelLarge!,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

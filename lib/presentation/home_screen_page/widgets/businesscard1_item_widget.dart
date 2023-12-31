import '../models/businesscard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Businesscard1ItemWidget extends StatelessWidget {
  Businesscard1ItemWidget(
    this.businesscard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Businesscard1ItemModel businesscard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray10008.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle34624949,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        businesscard1ItemModelObj.title!,
                        style: CustomTextStyles.titleMediumCircularStdGray90015,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        businesscard1ItemModelObj.rating!,
                        style: CustomTextStyles.labelLargeCircularStdGray90015,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    businesscard1ItemModelObj.hours!,
                    style: CustomTextStyles.labelLargeCircularStdGray90015,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack9000520x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    businesscard1ItemModelObj.callButton!,
                    style: CustomTextStyles.labelLargeCircularStdBlack90005,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    height: 44.v,
                    text: "lbl_get_directions".tr,
                    buttonStyle: CustomButtonStyles.fillBlueTL8,
                    buttonTextStyle: CustomTextStyles.titleSmallRubikWhiteA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    padding: EdgeInsets.all(17.h),
                    decoration: IconButtonStyleHelper.outlineGrayTL10,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightBlue7000144x44,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

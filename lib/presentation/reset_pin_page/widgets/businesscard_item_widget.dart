import '../models/businesscard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class BusinesscardItemWidget extends StatelessWidget {
  BusinesscardItemWidget(
    this.businesscardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusinesscardItemModel businesscardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 261.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(12.h),
          decoration: AppDecoration.fillGray10008.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle34624949,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      margin: EdgeInsets.only(bottom: 9.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        top: 10.v,
                        bottom: 17.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            businesscardItemModelObj.title!,
                            style: CustomTextStyles
                                .titleMediumCircularStdGray90015,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            businesscardItemModelObj.rating!,
                            style:
                                CustomTextStyles.labelLargeCircularStdGray90015,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameBlack90005,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 26.h,
                        top: 25.v,
                        bottom: 24.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        businesscardItemModelObj.hours!,
                        style: CustomTextStyles.labelLargeCircularStdGray90015,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameBlack9000520x20,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(left: 97.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 1.v,
                      ),
                      child: Text(
                        businesscardItemModelObj.callText!,
                        style: CustomTextStyles.labelLargeCircularStdBlack90005,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}

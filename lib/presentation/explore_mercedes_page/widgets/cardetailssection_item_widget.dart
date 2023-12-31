import '../models/cardetailssection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class CardetailssectionItemWidget extends StatelessWidget {
  CardetailssectionItemWidget(
    this.cardetailssectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardetailssectionItemModel cardetailssectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 207.v,
        width: 353.h,
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                opacity: 0.04,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    bottom: 48.v,
                  ),
                  child: Text(
                    cardetailssectionItemModelObj.carBrand!,
                    style: CustomTextStyles.ceraProBlack90005,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 22.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardetailssectionItemModelObj.carColor!,
                      style: CustomTextStyles.bodySmallOpenSansBluegray500,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      cardetailssectionItemModelObj.carModel!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 24.v,
                  right: 20.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 14.v,
                      width: 15.h,
                      margin: EdgeInsets.symmetric(vertical: 10.v),
                    ),
                    Container(
                      height: 34.v,
                      width: 93.h,
                      margin: EdgeInsets.only(left: 24.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 34.v,
                              width: 93.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 12.v,
                              ),
                              decoration:
                                  AppDecoration.outlineGray90019.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowRightWhiteA700,
                                height: 8.v,
                                width: 10.h,
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                cardetailssectionItemModelObj.carPrice!,
                                style: CustomTextStyles.labelLargeDMSansBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: cardetailssectionItemModelObj?.carLogo,
              height: 145.v,
              width: 317.h,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}

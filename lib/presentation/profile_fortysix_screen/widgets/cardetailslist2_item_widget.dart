import '../models/cardetailslist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Cardetailslist2ItemWidget extends StatelessWidget {
  Cardetailslist2ItemWidget(
    this.cardetailslist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cardetailslist2ItemModel cardetailslist2ItemModelObj;

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
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                opacity: 0.04,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    bottom: 32.v,
                  ),
                  child: Text(
                    cardetailslist2ItemModelObj.carName!,
                    style: CustomTextStyles.openSansBlack90005,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 133.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardetailslist2ItemModelObj.colorName!,
                          style:
                              CustomTextStyles.bodySmallOpenSansBluegray500_1,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          cardetailslist2ItemModelObj.modelName!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpRed800,
                      height: 14.v,
                      width: 15.h,
                      margin: EdgeInsets.only(
                        top: 11.v,
                        bottom: 17.v,
                      ),
                    ),
                    Container(
                      height: 34.v,
                      width: 93.h,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        bottom: 7.v,
                      ),
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
                                cardetailslist2ItemModelObj.price!,
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
              imagePath: cardetailslist2ItemModelObj?.ford,
              height: 108.v,
              width: 291.h,
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}

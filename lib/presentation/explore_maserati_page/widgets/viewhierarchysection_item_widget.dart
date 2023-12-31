import '../models/viewhierarchysection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchysectionItemWidget extends StatelessWidget {
  ViewhierarchysectionItemWidget(
    this.viewhierarchysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchysectionItemModel viewhierarchysectionItemModelObj;

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
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        viewhierarchysectionItemModelObj.text1!,
                        style: CustomTextStyles.bodySmallOpenSansBluegray500,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        viewhierarchysectionItemModelObj.text2!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder12,
                                  ),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightWhiteA700,
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
                                    viewhierarchysectionItemModelObj.text3!,
                                    style:
                                        CustomTextStyles.labelLargeDMSansBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
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
                        viewhierarchysectionItemModelObj.text4!,
                        style: CustomTextStyles.ceraProBlack90005,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: viewhierarchysectionItemModelObj?.image3,
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
    );
  }
}

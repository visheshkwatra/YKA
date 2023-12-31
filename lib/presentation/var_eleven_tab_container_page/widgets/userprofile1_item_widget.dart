import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(left: 385.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 110.v,
        width: 353.h,
        decoration: AppDecoration.gradientIndigoToCyan.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 25.v,
                width: 196.h,
                margin: EdgeInsets.only(bottom: 6.v),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 25.v,
                        width: 196.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                            98.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector505,
                      height: 5.v,
                      width: 9.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 63.h,
                        bottom: 8.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofile1ItemModelObj.dynamicProperty3!,
                      style: CustomTextStyles.titleSmallDMSansWhiteA700,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      userprofile1ItemModelObj.dynamicProperty4!,
                      style: CustomTextStyles.bodySmallDMSansWhiteA700,
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      margin: EdgeInsets.only(right: 20.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            userprofile1ItemModelObj.dynamicProperty5!,
                            style: CustomTextStyles.labelMediumDMSansPrimary,
                          ),
                          CustomImageView(
                            imagePath:
                                userprofile1ItemModelObj?.dynamicProperty6,
                            height: 6.v,
                            width: 8.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 3.v,
                              bottom: 4.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 164.v,
                    width: 293.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 1.v,
                            width: 33.h,
                            margin: EdgeInsets.only(
                              right: 32.h,
                              bottom: 15.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.black90005.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 164.v,
                            width: 293.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img292164x293,
                                  height: 164.v,
                                  width: 293.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 36.h,
                                      bottom: 20.v,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 1.v,
                                            width: 10.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5.h,
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment(0, 0.57),
                                                end: Alignment(1, 0.57),
                                                colors: [
                                                  appTheme.black90005
                                                      .withOpacity(0.2),
                                                  appTheme.black90005
                                                      .withOpacity(0.08),
                                                  appTheme.black90005
                                                      .withOpacity(0.05),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Container(
                                          height: 1.v,
                                          width: 16.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8.h,
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 0.57),
                                              end: Alignment(1, 0.57),
                                              colors: [
                                                appTheme.black90005
                                                    .withOpacity(0.2),
                                                appTheme.black90005
                                                    .withOpacity(0.08),
                                                appTheme.black90005
                                                    .withOpacity(0.05),
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 164.v,
                    width: 293.h,
                    margin: EdgeInsets.only(left: 72.h),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 18.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 9.v,
                                  width: 99.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.black90005.withOpacity(0.5),
                                  ),
                                ),
                                Container(
                                  height: 5.v,
                                  width: 33.h,
                                  margin: EdgeInsets.only(
                                    left: 16.h,
                                    top: 4.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.black90005.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 1.v,
                            width: 33.h,
                            margin: EdgeInsets.only(
                              right: 32.h,
                              bottom: 15.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.black90005.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 164.v,
                            width: 293.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img292164x293,
                                  height: 164.v,
                                  width: 293.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 36.h,
                                      bottom: 20.v,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 1.v,
                                            width: 10.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5.h,
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment(0, 0.57),
                                                end: Alignment(1, 0.57),
                                                colors: [
                                                  appTheme.black90005
                                                      .withOpacity(0.2),
                                                  appTheme.black90005
                                                      .withOpacity(0.08),
                                                  appTheme.black90005
                                                      .withOpacity(0.05),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Container(
                                          height: 1.v,
                                          width: 16.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8.h,
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 0.57),
                                              end: Alignment(1, 0.57),
                                              colors: [
                                                appTheme.black90005
                                                    .withOpacity(0.2),
                                                appTheme.black90005
                                                    .withOpacity(0.08),
                                                appTheme.black90005
                                                    .withOpacity(0.05),
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
    );
  }
}

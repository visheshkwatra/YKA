import 'bloc/var_seven_bloc.dart';
import 'models/var_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VarSevenBottomsheet extends StatelessWidget {
  const VarSevenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarSevenBloc>(
      create: (context) => VarSevenBloc(VarSevenState(
        varSevenModelObj: VarSevenModel(),
      ))
        ..add(VarSevenInitialEvent()),
      child: VarSevenBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_select_service_mode".tr,
              style: CustomTextStyles.titleMediumDMSans,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 193.v,
                  width: 171.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 17.v,
                          ),
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Opacity(
                                    opacity: 0.2,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgVector537,
                                      height: 1.v,
                                      width: 5.h,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110.h,
                                    child: Divider(
                                      color: appTheme.indigo10001,
                                      indent: 4.h,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 27.v),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 92.h,
                                    child: Text(
                                      "msg_home_pickup_drop".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleSmallIndigo800
                                          .copyWith(
                                        height: 1.30,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightRed80002,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 36.h,
                                      top: 13.v,
                                      bottom: 16.v,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 21.v),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroupGray60002,
                        height: 87.v,
                        width: 132.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCarBlue700,
                        height: 25.v,
                        width: 61.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 70.v,
                          right: 34.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 189.v,
                  width: 171.h,
                  margin: EdgeInsets.only(top: 4.v),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 62.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 34.v,
                          ),
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 81.h,
                                margin: EdgeInsets.only(top: 15.v),
                                child: Text(
                                  "msg_service_center_visit".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallIndigo800
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRightRed80002,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 47.h,
                                  top: 30.v,
                                  bottom: 17.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 86.v,
                          width: 132.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 37.h,
                            vertical: 9.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup829,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCarBlack90005,
                            height: 25.v,
                            width: 34.h,
                            alignment: Alignment.bottomLeft,
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
    );
  }
}

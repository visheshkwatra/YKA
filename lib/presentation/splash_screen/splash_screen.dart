import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: Container(
              width: 375.h,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 29.v,
              ),
              child: Column(
                children: [
                  _buildSplashColumn(context),
                  SizedBox(height: 24.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlineBlueTL21,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFi3781609,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: CustomIconButton(
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.outlineBlueTL21,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFi3781609,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: CustomIconButton(
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          decoration: IconButtonStyleHelper.outlineBlueTL21,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFi3781609,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClockBlack90005,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  decoration: AppDecoration.fillGray10001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.outlineBlue,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFi3781609,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_change_pin".tr,
                    style: CustomTextStyles.titleMediumRubikBluegray800,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlue70001,
                  height: 8.v,
                  width: 4.h,
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 1.v,
            width: 209.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 209.h,
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 209.h,
                    child: Divider(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 12.h,
            ),
            child: _buildMobileRow(
              context,
              contactUsText: "lbl_consumers_right".tr,
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 209.h,
            child: Divider(),
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 39.adaptSize,
                    width: 39.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMobileGray10001,
                          height: 39.adaptSize,
                          width: 39.adaptSize,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.outlineBlue,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFi3781609,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 12.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "lbl_about_us".tr,
                      style: CustomTextStyles.titleMediumRubikBluegray800,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightBlue70001,
                    height: 8.v,
                    width: 4.h,
                    margin: EdgeInsets.only(
                      top: 19.v,
                      bottom: 12.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 209.h,
            child: Divider(),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 12.h,
            ),
            child: _buildMobileRow(
              context,
              contactUsText: "lbl_contact_us".tr,
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 209.h,
            child: Divider(),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 12.h,
            ),
            child: _buildMobileRow(
              context,
              contactUsText: "lbl_logout".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMobileRow(
    BuildContext context, {
    required String contactUsText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 32.adaptSize,
          width: 32.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMobile,
                height: 32.adaptSize,
                width: 32.adaptSize,
                alignment: Alignment.center,
              ),
              CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlineBlue,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFi3781609,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 5.v,
            bottom: 7.v,
          ),
          child: Text(
            contactUsText,
            style: CustomTextStyles.titleMediumRubikBluegray800.copyWith(
              color: appTheme.blueGray800,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlue70001,
          height: 8.v,
          width: 4.h,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}

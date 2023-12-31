import 'bloc/splash_three_bloc.dart';
import 'models/splash_three_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class SplashThreeScreen extends StatelessWidget {
  const SplashThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashThreeBloc>(
      create: (context) => SplashThreeBloc(SplashThreeState(
        splashThreeModelObj: SplashThreeModel(),
      ))
        ..add(SplashThreeInitialEvent()),
      child: SplashThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashThreeBloc, SplashThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 24.v),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    right: 18.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    children: [
                      _buildEditProfileRow(context),
                      SizedBox(height: 12.v),
                      _buildFiRow(context),
                      SizedBox(height: 11.v),
                      _buildSplashThreeColumn(context),
                    ],
                  ),
                ),
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
        text: "lbl_profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfileRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle146962,
            height: 97.v,
            width: 95.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_luna_rodger".tr,
                  style: CustomTextStyles.titleMediumLato,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_123luna".tr,
                  style: CustomTextStyles.bodySmallLatoGray60005,
                ),
                SizedBox(height: 9.v),
                CustomElevatedButton(
                  height: 30.v,
                  width: 82.h,
                  text: "lbl_edit_profile".tr,
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle:
                      CustomTextStyles.labelLargeCircularStdBlack90005Medium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillWhiteATL25,
            child: CustomImageView(
              imagePath: ImageConstant.imgFi10439779,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_roadside".tr.toUpperCase(),
                        style: CustomTextStyles.titleMediumCircularStdWhiteA700,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_assitance".tr.toUpperCase(),
                        style: CustomTextStyles
                            .titleMediumCircularStdWhiteA700Medium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "msg_get_real_time_assistance".tr,
                  style: CustomTextStyles.bodySmallCircularStdWhiteA700,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVector496,
            height: 8.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 22.v,
              right: 7.h,
              bottom: 19.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashThreeColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
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
                    "lbl_my_bookings".tr,
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
            child: _buildMyFavoritesRow(
              context,
              myFavoritesText: "lbl_my_vehicles".tr,
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
                          imagePath: ImageConstant.imgMobileGray1000139x39,
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
                      "lbl_saved_addresses".tr,
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
          SizedBox(height: 22.v),
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
            child: _buildMyFavoritesRow(
              context,
              myFavoritesText: "lbl_my_favorites".tr,
            ),
          ),
          SizedBox(height: 22.v),
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
            child: _buildMyFavoritesRow(
              context,
              myFavoritesText: "lbl_contact_support".tr,
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
            child: _buildMyFavoritesRow(
              context,
              myFavoritesText: "lbl_settings".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMyFavoritesRow(
    BuildContext context, {
    required String myFavoritesText,
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
            top: 7.v,
            bottom: 5.v,
          ),
          child: Text(
            myFavoritesText,
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

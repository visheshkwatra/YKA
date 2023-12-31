import 'bloc/profile_thirtythree_bloc.dart';
import 'models/profile_thirtythree_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class ProfileThirtythreeScreen extends StatelessWidget {
  const ProfileThirtythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileThirtythreeBloc>(
      create: (context) => ProfileThirtythreeBloc(ProfileThirtythreeState(
        profileThirtythreeModelObj: ProfileThirtythreeModel(),
      ))
        ..add(ProfileThirtythreeInitialEvent()),
      child: ProfileThirtythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileThirtythreeBloc, ProfileThirtythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildUserColumn(context),
                  _buildOtherOptionsColumn(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUserColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28.v),
      decoration: AppDecoration.gradientRedAToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomAppBar(
            height: 49.v,
            leadingWidth: 68.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "msg_roadside_assistance".tr,
            ),
          ),
          SizedBox(height: 36.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFi6939131,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 27.v,
                    bottom: 23.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 18.v,
                    bottom: 18.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_roadside_rescure".tr,
                        style: CustomTextStyles.titleSmallWhiteA700Bold15,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "msg_contact_yka_recovery".tr,
                        style: CustomTextStyles.bodySmallOpenSansWhiteA700,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 82.v,
                  width: 74.h,
                  margin: EdgeInsets.only(left: 18.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 30.v,
                  ),
                  decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFi3059446,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOtherOptionsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 32.v,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_other_options".tr,
              style: CustomTextStyles.titleSmallBluegray70003,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                Container(
                  height: 60.v,
                  width: 61.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage5267,
                    height: 24.v,
                    width: 42.h,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: _buildNissan(
                    context,
                    titleText: "lbl_ford".tr,
                    bodyText: "msg_call_973_7888955435".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    right: 10.h,
                    bottom: 13.v,
                  ),
                  child: CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame29,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          _buildSettingsRow(
            context,
            kaiyiText: "lbl_nissan".tr,
            callText: "msg_call_973_7888955435".tr,
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage5270,
                        height: 15.v,
                        width: 48.h,
                      ),
                      SizedBox(height: 6.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage5271,
                        height: 6.v,
                        width: 42.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: _buildNissan(
                    context,
                    titleText: "lbl_infiniti".tr,
                    bodyText: "msg_call_973_7888955435".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    right: 10.h,
                    bottom: 13.v,
                  ),
                  child: CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame29,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage5269,
                        height: 20.v,
                        width: 7.h,
                      ),
                      SizedBox(height: 5.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage5272,
                        height: 6.v,
                        width: 32.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: _buildNissan(
                    context,
                    titleText: "lbl_lincoln".tr,
                    bodyText: "msg_call_973_7888955435".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    right: 10.h,
                    bottom: 13.v,
                  ),
                  child: CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame29,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          _buildSettingsRow(
            context,
            kaiyiText: "lbl_kaiyi".tr,
            callText: "msg_call_973_7888955435".tr,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNissan(
    BuildContext context, {
    required String titleText,
    required String bodyText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black90005,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          bodyText,
          style: CustomTextStyles.bodySmallOpenSansBluegray500_1.copyWith(
            color: appTheme.blueGray500,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSettingsRow(
    BuildContext context, {
    required String kaiyiText,
    required String callText,
  }) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 60.v,
            width: 61.h,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillIndigo,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsBlack90005,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 9.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kaiyiText,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.black90005,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  callText,
                  style:
                      CustomTextStyles.bodySmallOpenSansBluegray500_1.copyWith(
                    color: appTheme.blueGray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              right: 10.h,
              bottom: 13.v,
            ),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame29,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
